<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	public function __construct(Type $var = null) 
	{
		parent::__construct();
		$this->load->model('pegawai_model');
	}

	public function index()
	{
		if (!$this->session->userdata('username')) {
			redirect(base_url('login'));
		}
		
		$data['title'] = 'Pegawai';
		$data['pegawai'] = $this->pegawai_model->get_data('tbl_pegawai')->result();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('pegawai', $data);
		$this->load->view('templates/footer');
	}

	public function tambah()
	{
		$data['title'] = 'Tambah Pegawai';

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('tambah_pegawai');
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		$this->_rules();

		if ($this->form_validation->run() == FALSE){
			$this->tambah();
		} else {
			$data = array(
				'nama' => $this->input->post('nama'),
				'jenjang_studi' => $this->input->post('jenjang_studi'),
				'tahun_kelulusan' => $this->input->post('tahun_kelulusan'),
				'ska_skk' => $this->input->post('ska_skk'),
				'grade_ska' => $this->input->post('grade_ska'),
				'masa_berlaku' => $this->input->post('masa_berlaku'),
				'status' => $this->input->post('status'),
			);

			$this->pegawai_model->insert_data($data, 'tbl_pegawai');
			$this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible fade show" role="alert">
			Data Berhasil Ditambahkan!
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  <span aria-hidden="true">&times;</span>
			</button>
		  </div>');
		  redirect('pegawai');
		}
	}

	public function edit($id_pegawai)
	{
		$this->_rules();

		if ($this->form_validation->run() == FALSE){
			$this->index();
		} else {
			$data = array(
				'id_pegawai' => $id_pegawai,
				'nama' => $this->input->post('nama'),
				'jenjang_studi' => $this->input->post('jenjang_studi'),
				'tahun_kelulusan' => $this->input->post('tahun_kelulusan'),
				'ska_skk' => $this->input->post('ska_skk'),
				'grade_ska' => $this->input->post('grade_ska'),
				'masa_berlaku' => $this->input->post('masa_berlaku'),
				'status' => $this->input->post('status'),
			);

			$this->pegawai_model->update_data($data, 'tbl_pegawai');
			$this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible fade show" role="alert">
			Data Berhasil Diubah!
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  <span aria-hidden="true">&times;</span>
			</button>
		  </div>');
		  redirect('pegawai');
		}
	}

	public function _rules()
	{
		$this->form_validation->set_rules('nama', 'Nama', 'required', array(
			'required' => '%s harus diisi!'
		));
		$this->form_validation->set_rules('jenjang_studi', 'Jenjang Studi', 'required', array(
			'required' => '%s harus diisi!'
		));
		$this->form_validation->set_rules('ska_skk', 'SKA SKK', 'required', array(
			'required' => '%s harus diisi!'
		));
		$this->form_validation->set_rules('grade_ska', 'Grade SKA', 'required', array(
			'required' => '%s harus diisi!'
		));
		$this->form_validation->set_rules('masa_berlaku', 'Masa Berlaku', 'required', array(
			'required' => '%s harus diisi!'
		));
		$this->form_validation->set_rules('status', 'Status', 'required', array(
			'required' => '%s harus diisi!'
		));
	}

	public function delete($id)
	{
		$where = array('id_pegawai' => $id);

		$this->pegawai_model->delete($where, 'tbl_pegawai');
		$this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
		Data Berhasil Dihapus!
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		  </div>');
		redirect('pegawai');
	}

	public function search()
	{
		$data['title'] = 'Pegawai';

		$keyword = $this->input->post('keyword');
		$data['pegawai']=$this->pegawai_model->get_keyword($keyword);
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('pegawai', $data);
		$this->load->view('templates/footer');
	}

	public function detail($id_pegawai)
	{
		$data['title'] = 'Detail Pegawai';
	
		// Load the model
		$this->load->model('pegawai_model');
	
		// Retrieve the employee details, including "masa_berlaku"
		$detail = $this->pegawai_model->detail_data($id_pegawai);
	
		// Set the time zone to match your server's time zone
		date_default_timezone_set('Asia/Jakarta');

		// Get the current date and time (end of the day)
		$currentDate = new DateTime('now');
		$currentDate->setTime(23, 59, 59);

		// Get the expired date from your data (replace this with your actual expired date)
		$expiredDate = new DateTime($detail->masa_berlaku);
		$expiredDate->setTime(23, 59, 59);

		// Calculate the interval
		$interval = $currentDate->diff($expiredDate);
	
		if ($expiredDate > $currentDate) {
			$remainingYears = $interval->y;
			$remainingMonths = $interval->m;
			$remainingDays = $interval->d;
		} else {
			$remainingYears = -$interval->y;
			$remainingMonths = -$interval->m;
			$remainingDays = -$interval->d;
		}
	
		$timeComponents = [];
		if ($remainingYears !== 0) {
			$timeComponents[] = "$remainingYears th" . ($remainingYears > 1 || $remainingYears < -1 ? '' : '');
		}
		if ($remainingMonths !== 0) {
			$timeComponents[] = "$remainingMonths bln" . ($remainingMonths > 1 || $remainingMonths < -1 ? '' : '');
		}
		if ($remainingDays !== 0) {
			$timeComponents[] = "$remainingDays hari" . ($remainingDays > 1 || $remainingDays < -1 ? '' : '');
		}
	
		$remainingTime = implode(' ', $timeComponents);
	
		// Pass the employee detail and remaining time to the view
		$data['detail'] = $detail;
		$data['remainingTime'] = $remainingTime;
		$data['id_pegawai'] = $id_pegawai;
		
		if ($expiredDate > $currentDate && $interval->days >= 50) {
			$status = '<span style="color: green;">HIDUP</span>';
		} elseif ($interval->days < 50 && $interval->invert == 0) {
			$status = '<span style="color: orange;">KRITIS</span>';
		} else {
			$status = '<span style="color: red;">MATI</span>';
		}

		$data['status'] = $status;
	
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('detail', $data);
		$this->load->view('templates/footer');
	}
	

	
}

/* End of file Pegawai.php */
/* Location: ./application/controllers/Pegawai.php */