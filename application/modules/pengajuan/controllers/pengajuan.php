<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * pengajuan controller
 */
class pengajuan extends Front_Controller
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
		$this->load->model('pengajuan_model', null, true);
		$this->lang->load('pengajuan');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');

		Assets::add_module_js('pengajuan', 'pengajuan.js');
	}

	//--------------------------------------------------------------------


	/**
	 * Displays a list of form data.
	 *
	 * @return void
	 */
	public function index()
	{

		$records = $this->pengajuan_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------

	public function tolak($id){
		$data = array(
	       		'izin_status' => 1);
		$this->db->where('id',$id);
		$this->db->update('bf_pengajuan',$data);
		redirect('admin/perizinan/konfirmasi_izin');
	}

	public function terima($id){
		$data = array(
	       		'izin_status' => 2);
		$this->db->where('id',$id);
		$this->db->update('bf_pengajuan',$data);
		redirect('admin/perizinan/konfirmasi_izin');
	}

}