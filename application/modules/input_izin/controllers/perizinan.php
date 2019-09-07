<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * perizinan controller
 */
class perizinan extends Admin_Controller
{

	//--------------------------------------------------------------------


	/**
	 * Constructor
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		$this->auth->restrict('Input_Izin.Perizinan.View');
		$this->load->model('input_izin_model', null, true);
		$this->lang->load('input_izin');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');
		Template::set_block('sub_nav', 'perizinan/_sub_nav');

		Assets::add_module_js('input_izin', 'input_izin.js');
	}

	//--------------------------------------------------------------------


	/**
	 * Displays a list of form data.
	 *
	 * @return void
	 */
	public function index()
	{

		// Deleting anything?
		if (isset($_POST['delete']))
		{
			$checked = $this->input->post('checked');

			if (is_array($checked) && count($checked))
			{
				$result = FALSE;
				foreach ($checked as $pid)
				{
					$result = $this->input_izin_model->delete($pid);
				}

				if ($result)
				{
					Template::set_message(count($checked) .' '. lang('input_izin_delete_success'), 'success');
				}
				else
				{
					Template::set_message(lang('input_izin_delete_failure') . $this->input_izin_model->error, 'error');
				}
			}
		}

		// PAGINATION
		$this->load->library('pagination');
		$offset = $this->input->get('per_page');
		$search = $this->input->get('search_data');
		$limit  = $this->settings_lib->item('site.list_limit');

		if($search){
			$records  = $this->input_izin_model->search($search, $limit, $offset);
			$total    = $this->input_izin_model->num_search($search);
		}
		else {
			$records  = $this->input_izin_model->limit($limit, $offset)->find_all();
			$total    = $this->input_izin_model->count_all();
		}

		// Pagination Config
		$this->pager['base_url'] 			= current_url() .'?';
		$this->pager['total_rows'] 		= $total;
		$this->pager['per_page'] 			= $limit;
		$this->pager['page_query_string']	= TRUE;
		$this->pagination->initialize($this->pager);
		
		$data = new StdClass();
		$data->links  = $this->pagination->create_links();
		$data->total  = $total;
		$data->offset = $offset;
		$data->limit  = $limit;
		
		Template::set('search', $search);
		Template::set('records', $records);
		Template::set('page', $data);

		$records = $this->input_izin_model->find_all();

		Template::set('records', $records);
		Template::set('toolbar_title', 'Input Izin');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Creates a Input Izin object.
	 *
	 * @return void
	 */
	public function create()
	{
		$this->auth->restrict('Input_Izin.Perizinan.Create');

		if (isset($_POST['save']))
		{
			if ($insert_id = $this->save_input_izin())
			{
				// Log the activity
				log_activity($this->current_user->id, lang('input_izin_act_create_record') .': '. $insert_id .' : '. $this->input->ip_address(), 'input_izin');

				Template::set_message(lang('input_izin_create_success'), 'success');
				redirect(SITE_AREA .'/perizinan/input_izin');
			}
			else
			{
				Template::set_message(lang('input_izin_create_failure') . $this->input_izin_model->error, 'error');
			}
		}
		Assets::add_module_js('input_izin', 'input_izin.js');

		Template::set('toolbar_title', lang('input_izin_create') . ' Input Izin');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Allows editing of Input Izin data.
	 *
	 * @return void
	 */
	public function edit()
	{
		$id = $this->uri->segment(5);

		if (empty($id))
		{
			Template::set_message(lang('input_izin_invalid_id'), 'error');
			redirect(SITE_AREA .'/perizinan/input_izin');
		}

		if (isset($_POST['save']))
		{
			$this->auth->restrict('Input_Izin.Perizinan.Edit');

			if ($this->save_input_izin('update', $id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('input_izin_act_edit_record') .': '. $id .' : '. $this->input->ip_address(), 'input_izin');

				Template::set_message(lang('input_izin_edit_success'), 'success');
				redirect(SITE_AREA .'/perizinan/input_izin');
			}
			else
			{
				Template::set_message(lang('input_izin_edit_failure') . $this->input_izin_model->error, 'error');
			}
		}
		else if (isset($_POST['delete']))
		{
			$this->auth->restrict('Input_Izin.Perizinan.Delete');

			if ($this->input_izin_model->delete($id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('input_izin_act_delete_record') .': '. $id .' : '. $this->input->ip_address(), 'input_izin');

				Template::set_message(lang('input_izin_delete_success'), 'success');

				redirect(SITE_AREA .'/perizinan/input_izin');
			}
			else
			{
				Template::set_message(lang('input_izin_delete_failure') . $this->input_izin_model->error, 'error');
			}
		}
		Template::set('input_izin', $this->input_izin_model->find($id));
		Template::set('toolbar_title', lang('input_izin_edit') .' Input Izin');
		Template::render();
	}

	//--------------------------------------------------------------------

	//--------------------------------------------------------------------
	// !PRIVATE METHODS
	//--------------------------------------------------------------------

	/**
	 * Summary
	 *
	 * @param String $type Either "insert" or "update"
	 * @param Int	 $id	The ID of the record to update, ignored on inserts
	 *
	 * @return Mixed    An INT id for successful inserts, TRUE for successful updates, else FALSE
	 */
	private function save_input_izin($type='insert', $id=0)
	{
		if ($type == 'update')
		{
			$_POST['id'] = $id;
		}

		// make sure we only pass in the fields we want
		
		$data = array();
		$data['izin_nama']        = $this->input->post('input_izin_izin_nama');
		$data['izin_divisi']        = $this->input->post('input_izin_izin_divisi');
		$data['input_izin_jenis']        = $this->input->post('input_izin_input_izin_jenis');
		$data['tgl_m']        = $this->input->post('input_izin_tgl_m') ? $this->input->post('input_izin_tgl_m') : '0000-00-00';
		$data['tgl_s']        = $this->input->post('input_izin_tgl_s') ? $this->input->post('input_izin_tgl_s') : '0000-00-00';
		$data['izin_waktu_m']        = $this->input->post('input_izin_izin_waktu_m');
		$data['izin_waktu_s']        = $this->input->post('input_izin_izin_waktu_s');

		if ($type == 'insert')
		{
			$id = $this->input_izin_model->insert($data);

			if (is_numeric($id))
			{
				$return = $id;
			}
			else
			{
				$return = FALSE;
			}
		}
		elseif ($type == 'update')
		{
			$return = $this->input_izin_model->update($id, $data);
		}

		return $return;
	}

	//--------------------------------------------------------------------

	public function search() {
		$search  = $this->input->post('q');

		$offset = $this->input->get('per_page');
		$limit  = $this->settings_lib->item('site.list_limit');

		$records = $this->input_izin_model->search($search, $limit, $offset);
		$total   = $this->input_izin_model->num_search($search);
		
		// Pagination
		$this->load->library('pagination');
		$offset = $this->input->get('per_page');
		$limit  = $this->settings_lib->item('site.list_limit');

		$url = str_replace('search', '', current_url());
		$this->pager['base_url'] 			= $url.'?search_data='.$search;
		$this->pager['total_rows'] 		= $total;
		$this->pager['per_page'] 			= $limit;
		$this->pager['page_query_string']	= TRUE;
		$this->pagination->initialize($this->pager);

		$data = new StdClass();
		$data->links   = $this->pagination->create_links();
		$data->total   = $total;
		$data->offset  = $offset;
		$data->limit   = $limit;

		Template::set('page', $data);
		Template::set('records', $records);
		Template::render('input_izin/perizinan/search');
	}


}