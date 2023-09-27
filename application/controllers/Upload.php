<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('UploadModel'); // Load your model
    }

    public function process($id_pegawai) {
        // File Upload Configuration
        $config['upload_path'] = './uploads/'; // Specify your upload folder
        $config['allowed_types'] = 'gif|jpg|jpeg|png|pdf'; // Define allowed file types
        $config['max_size'] = 4096; // Maximum file size in KB
    
        $this->load->library('upload', $config);
    
        if (!$this->upload->do_upload('userfile')) {
            // Handle upload error
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('upload_form', $error);
        } else {
            // Upload was successful, get file data
            $data = $this->upload->data();
    
            // Get the id_pegawai from the URL parameter
            // $id_pegawai = $this->uri->segment(3); // Alternatively, you can use this method to get the parameter from the URL
            
            // Insert file path into the database
            $file_path = './uploads/' . $data['file_name'];
            $this->UploadModel->insert_file($id_pegawai, $file_path);
    
            // Redirect or display a success message
            redirect('pegawai/detail/' . $id_pegawai);
        }
    }
    
    
}