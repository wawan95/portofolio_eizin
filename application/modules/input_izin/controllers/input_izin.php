<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * input_izin controller
 */
class input_izin extends Front_Controller
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
		$this->load->model('input_izin_model', null, true);
		$this->lang->load('input_izin');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');

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

		$records = $this->input_izin_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------



}