<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * jenis_izin controller
 */
class jenis_izin extends Front_Controller
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
		$this->load->model('jenis_izin_model', null, true);
		$this->lang->load('jenis_izin');
		

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

		$records = $this->jenis_izin_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------

public function getjenisizin(){
		$query = $this->db->select('izin_jenis')->get('jenis_izin')->result();
		$jum1 = $this->db->where('year(tglmulai_izin)',2015)->where('jenis_izin',1)->get('pengajuan_izin')->result();
		$jum2 = $this->db->where('year(tglmulai_izin)',2016)->where('jenis_izin',2)->get('pengajuan_izin')->result();
		$jumlah1 = count($jum1);
		$jumlah2 = count($jum2);
		$izin =[];
		$array_izin=[];
		foreach ($query as $q) {
			$izin['name'] = $q->izin_jenis;
			$izin['data'] = [$jumlah1, $jumlah2];
			array_push($array_izin, $izin);
		}
		echo json_encode($array_izin);
	}

}