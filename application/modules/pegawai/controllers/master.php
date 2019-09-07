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

		$this->auth->restrict('Pegawai.Master.View');
		$this->load->model('pegawai_model', null, true);
		$this->lang->load('pegawai');
		
		Template::set_block('sub_nav', 'master/_sub_nav');

		Assets::add_module_js('pegawai', 'pegawai.js');
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
					$result = $this->pegawai_model->delete($pid);
				}

				if ($result)
				{
					Template::set_message(count($checked) .' '. lang('pegawai_delete_success'), 'success');
				}
				else
				{
					Template::set_message(lang('pegawai_delete_failure') . $this->pegawai_model->error, 'error');
				}
			}
		}

		// PAGINATION
		$this->load->library('pagination');
		$offset = $this->input->get('per_page');
		$search = $this->input->get('search_data');
		$limit  = $this->settings_lib->item('site.list_limit');

		if($search){
			$records  = $this->pegawai_model->search($search, $limit, $offset);
			$total    = $this->pegawai_model->num_search($search);
		}
		else {
			$records  = $this->pegawai_model->limit($limit, $offset)->find_all();
			$total    = $this->pegawai_model->count_all();
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

		$records = $this->pegawai_model->find_all();

		Template::set('records', $records);
		Template::set('toolbar_title', 'Pegawai');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Creates a Pegawai object.
	 *
	 * @return void
	 */
	public function create()
	{
		$this->auth->restrict('Pegawai.Master.Create');

		if (isset($_POST['save']))
		{
			if ($insert_id = $this->save_pegawai())
			{
				// Log the activity
				log_activity($this->current_user->id, lang('pegawai_act_create_record') .': '. $insert_id .' : '. $this->input->ip_address(), 'pegawai');

				Template::set_message(lang('pegawai_create_success'), 'success');
				redirect(SITE_AREA .'/master/pegawai');
			}
			else
			{
				Template::set_message(lang('pegawai_create_failure') . $this->pegawai_model->error, 'error');
			}
		}
		Assets::add_module_js('pegawai', 'pegawai.js');

		Template::set('toolbar_title', lang('pegawai_create') . ' Pegawai');
		Template::render();
	}

	//--------------------------------------------------------------------


	/**
	 * Allows editing of Pegawai data.
	 *
	 * @return void
	 */
	public function edit()
	{
		$id = $this->uri->segment(5);

		if (empty($id))
		{
			Template::set_message(lang('pegawai_invalid_id'), 'error');
			redirect(SITE_AREA .'/master/pegawai');
		}

		if (isset($_POST['save']))
		{
			$this->auth->restrict('Pegawai.Master.Edit');

			if ($this->save_pegawai('update', $id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('pegawai_act_edit_record') .': '. $id .' : '. $this->input->ip_address(), 'pegawai');

				Template::set_message(lang('pegawai_edit_success'), 'success');
				redirect(SITE_AREA .'/master/pegawai');
			}
			else
			{
				Template::set_message(lang('pegawai_edit_failure') . $this->pegawai_model->error, 'error');
			}
		}
		else if (isset($_POST['delete']))
		{
			$this->auth->restrict('Pegawai.Master.Delete');

			if ($this->pegawai_model->delete($id))
			{
				// Log the activity
				log_activity($this->current_user->id, lang('pegawai_act_delete_record') .': '. $id .' : '. $this->input->ip_address(), 'pegawai');

				Template::set_message(lang('pegawai_delete_success'), 'success');

				redirect(SITE_AREA .'/master/pegawai');
			}
			else
			{
				Template::set_message(lang('pegawai_delete_failure') . $this->pegawai_model->error, 'error');
			}
		}
		Template::set('pegawai', $this->pegawai_model->find($id));
		Template::set('toolbar_title', lang('pegawai_edit') .' Pegawai');
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
	private function save_pegawai($type='insert', $id=0)
	{
		if ($type == 'update')
		{
			$_POST['pg_id'] = $id;
		}

		// make sure we only pass in the fields we want
		
		$data = array();
		$data['pg_nama']        = $this->input->post('pegawai_pg_nama');
		$data['pg_divisi']        = $this->input->post('pegawai_pg_divisi');
		$data['pg_alamat']        = $this->input->post('pegawai_pg_alamat');
		$data['pg_telefon']        = $this->input->post('pegawai_pg_telefon');
		$data['pg_foto']        = $this->input->post('pegawai_pg_foto');

		if ($type == 'insert')
		{
			$id = $this->pegawai_model->insert($data);

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
			$return = $this->pegawai_model->update($id, $data);
		}

		return $return;
	}

	//--------------------------------------------------------------------

	public function search() {
		$search  = $this->input->post('q');

		$offset = $this->input->get('per_page');
		$limit  = $this->settings_lib->item('site.list_limit');

		$records = $this->pegawai_model->search($search, $limit, $offset);
		$total   = $this->pegawai_model->num_search($search);
		
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
		Template::render('pegawai/master/search');
	}


}