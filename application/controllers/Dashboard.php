<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index()
	{
		if (!$this->session->userdata('username')) {
			redirect(base_url('login'));
		}
	
		$data['title'] = 'Dashboard';
	
		$this->load->model('pegawai_model');
		
		// Retrieve the employee details, including "masa_berlaku"
		$data['pegawai'] = $this->pegawai_model->get_data('tbl_pegawai')->result();

		// Initiate counters for SKA Status
		$countHidup = 0;
		$countKritis = 0;
		$countMati = 0;

		// Interate through employees to calculate SKA Status Count
		foreach ($data['pegawai'] as $pegawai){
			$expiredDate = new DateTime($pegawai->masa_berlaku);
			$expiredDate->setTime(23, 59, 59);

			$currentDate = new DateTime('now');
			$currentDate->setTime(23, 59, 59);

			// Calculate the interval
			$interval = $currentDate->diff($expiredDate);

			if ($expiredDate > $currentDate && $interval->days >= 50) {
				$countHidup++;
			} elseif ($interval->days < 50 && $interval->invert == 0) {
				$countKritis++;
			} else {
				$countMati++;
			}
		}

		// Pass the counts to the view
		$data['countHidup'] = $countHidup;
		$data['countKritis'] = $countKritis;
		$data['countMati'] = $countMati;

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('dashboard', $data);
		$this->load->view('templates/footer');
	}

}	

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */