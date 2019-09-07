<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * master controller
 */
class master extends Admin_Controller
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

		$this->auth->restrict('Jenis_Izin.Master.View');
		$this->load->model('jenis_izin_model', null, true);
		$this->lang->load('jenis_izin');
		
		Template::set_block('sub_nav', 'master/_sub_nav');

		Assets::add_module_js('jenis_izin', 'jenis_izin.js');
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
					$result = $this->jenis_izin_model->delete($pid);
				}

				if ($result)
				{
					Template::set_message(count($checked) .' '. lang('jenis_izin_delete_success'), 'success');
				}
				else
				{
					Template::set_message(lang('jenis_izin_delete_failure') . $this->jenis_izin_model->error, 'error');
				}
			}
		}

		// PAGINATION
		$this->load->library('pagination');
		$offset = $this->input->get('per_page');
		$search = $this->input->get('search_data');
		$limit  = $this->settings_lib->item('site.list_limit');

		if($search){
			$records  = $this->jenis_izin_model->search($search, $limit, $offset);
			$total    = $this->jenis_izin_model->num_search($search);
		}
		else {
			$records  = $this->jenis_izin_model->limit($limit, $offset)->find_all();
			$total    = $this->jenis_izin_model->count_all();
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

		$records = $this->jenis_izin_model->find_all();

		Template::set('records', $records);
		Template::set('toolbar_title', 'Jenis Izin');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Creates a Jenis Izin object.
	 *
	 * @return void
	 */
	public function create()
	{
		$this->auth->restrict('Jenis_Izin.Master.Create');

		if (isset($_POST['save']))
		{
			if ($insert_id = $this->save_jenis_izin())
			{
				// Log the activity
				log_activity($this->current_user->id, lang('jenis_izin_act_create_record') .': '. $insert_id .' : '. $this->input->ip_address(), 'jenis_izin');

				Template::set_message(lang('jenis_izin_create_success'), 'success');
				redirect(SITE_AREA .'/master/jenis_izin');
			}
			else
			{
				Template::set_message(lang('jenis_izin_create_failure') . $this->jenis_izin_model->error, 'error');
			}
		}
		Assets::add_module_js('jenis_izin', 'jenis_izin.js');

		Template::set('toolbar_title', lang('jenis_izin_create') . ' Jenis Izin');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Allows editing of Jenis Izin data.
	 *
	 * @return void
	 */
	public function edit()
	{
		$id = $this->uri->segment(5);

		if (empty($id))
		{
			Template::set_message(lang('jenis_izin_invalid_id'), 'error');
			redirect(SITE_AREA .'/master/jenis_izin');
		}

		if (isset($_POST['save']))
		{
			$this->auth->restrict('Jenis_Izin.Master.Edit');

			if ($this->save_jenis_izin('update', $id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('jenis_izin_act_edit_record') .': '. $id .' : '. $this->input->ip_address(), 'jenis_izin');

				Template::set_message(lang('jenis_izin_edit_success'), 'success');
				redirect(SITE_AREA .'/master/jenis_izin');
			}
			else
			{
				Template::set_message(lang('jenis_izin_edit_failure') . $this->jenis_izin_model->error, 'error');
			}
		}
		else if (isset($_POST['delete']))
		{
			$this->auth->restrict('Jenis_Izin.Master.Delete');

			if ($this->jenis_izin_model->delete($id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('jenis_izin_act_delete_record') .': '. $id .' : '. $this->input->ip_address(), 'jenis_izin');

				Template::set_message(lang('jenis_izin_delete_success'), 'success');

				redirect(SITE_AREA .'/master/jenis_izin');
			}
			else
			{
				Template::set_message(lang('jenis_izin_delete_failure') . $this->jenis_izin_model->error, 'error');
			}
		}
		Template::set('jenis_izin', $this->jenis_izin_model->find($id));
		Template::set('toolbar_title', lang('jenis_izin_edit') .' Jenis Izin');
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
	private function save_jenis_izin($type='insert', $id=0)
	{
		if ($type == 'update')
		{
			$_POST['id'] = $id;
		}

		// make sure we only pass in the fields we want
		
		$data = array();
		$data['izin_jenis']        = $this->input->post('jenis_izin_izin_jenis');

		if ($type == 'insert')
		{
			$id = $this->jenis_izin_model->insert($data);

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
			$return = $this->jenis_izin_model->update($id, $data);
		}

		return $return;
	}

	//--------------------------------------------------------------------

	public function search() {
		$search  = $this->input->post('q');

		$offset = $this->input->get('per_page');
		$limit  = $this->settings_lib->item('site.list_limit');

		$records = $this->jenis_izin_model->search($search, $limit, $offset);
		$total   = $this->jenis_izin_model->num_search($search);
		
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
		Template::render('jenis_izin/master/search');
	}


}