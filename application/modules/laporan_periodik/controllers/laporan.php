<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * laporan controller
 */
class laporan extends Admin_Controller
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

		$this->auth->restrict('Laporan_Periodik.Laporan.View');
		$this->load->model('laporan_periodik_model', null, true);
		$this->lang->load('laporan_periodik');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');
		Template::set_block('sub_nav', 'laporan/_sub_nav');

		Assets::add_module_js('laporan_periodik', 'laporan_periodik.js');
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
					$result = $this->laporan_periodik_model->delete($pid);
				}

				if ($result)
				{
					Template::set_message(count($checked) .' '. lang('laporan_periodik_delete_success'), 'success');
				}
				else
				{
					Template::set_message(lang('laporan_periodik_delete_failure') . $this->laporan_periodik_model->error, 'error');
				}
			}
		}

		// PAGINATION
		$this->load->library('pagination');
		$offset = $this->input->get('per_page');
		$search = $this->input->get('search_data');
		$bulan = $this->input->get('bln');
		$limit  = $this->settings_lib->item('site.list_limit');

		if($search){
			$records  = $this->laporan_periodik_model->search($search, $limit, $offset);
			$total    = $this->laporan_periodik_model->num_search($search);
		} elseif($bulan){
			$records  = $this->laporan_periodik_model->bulanan($bulan);
			$total    = $this->laporan_periodik_model->num_bulanan($search);
		}
		else {
			$records  = $this->laporan_periodik_model->limit($limit, $offset)->find_all();
			$total    = $this->laporan_periodik_model->count_all();
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

		//$records = $this->laporan_periodik_model->find_all();

		Template::set('records', $records);
		Template::set('toolbar_title', 'Laporan Periodik');
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
	private function save_laporan_periodik($type='insert', $id=0)
	{
		if ($type == 'update')
		{
			$_POST['id'] = $id;
		}

		// make sure we only pass in the fields we want
		
		$data = array();
		$data['izin_nama']        = $this->input->post('laporan_periodik_izin_nama');
		$data['input_izin_jenis']        = $this->input->post('laporan_periodik_input_izin_jenis');
		$data['tgl_m']        = $this->input->post('laporan_periodik_tgl_m') ? $this->input->post('laporan_periodik_tgl_m') : '0000-00-00';
		$data['tgl_s']        = $this->input->post('laporan_periodik_tgl_s') ? $this->input->post('laporan_periodik_tgl_s') : '0000-00-00';
		$data['izin_waktu_m']        = $this->input->post('laporan_periodik_izin_waktu_m');
		$data['izin_waktu_s']        = $this->input->post('laporan_periodik_izin_waktu_s');
		$data['izin_status']        = $this->input->post('laporan_periodik_izin_status');

		if ($type == 'insert')
		{
			$id = $this->laporan_periodik_model->insert($data);

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
			$return = $this->laporan_periodik_model->update($id, $data);
		}

		return $return;
	}

	//--------------------------------------------------------------------

	public function search() {
		$search  = $this->input->post('q');

		$offset = $this->input->get('per_page');
		$limit  = $this->settings_lib->item('site.list_limit');

		$records = $this->laporan_periodik_model->search($search, $limit, $offset);
		$total   = $this->laporan_periodik_model->num_search($search);
		
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
		Template::render('laporan_periodik/laporan/search');
	}




	public function unduh(){
        ob_start();
        $this->load->view('unduh');
        $html = ob_get_contents();
        ob_end_clean();
         
        require_once('./assets/html2pdf/html2pdf.class.php');
        $pdf = new HTML2PDF('P','A3','en');
        $pdf->WriteHTML($html);
        $pdf->Output('LAPORAN IZIN.pdf');
    }

    public function cetak(){
        $this->load->view('laporan/cetak');
    }

}