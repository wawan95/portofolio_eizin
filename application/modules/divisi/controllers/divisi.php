<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * divisi controller
 */
class divisi extends Front_Controller
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

		$this->load->library('form_validation');
		$this->load->model('divisi_model', null, true);
		$this->lang->load('divisi');
		
		Assets::add_module_js('divisi', 'divisi.js');
	}

	//--------------------------------------------------------------------


	/**
	 * Displays a list of form data.
	 *
	 * @return void
	 */
	public function index()
	{

		$records = $this->divisi_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------



}