<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('UploadModel'); // Load your model
    }

    public function process_img($id_pegawai) {
        // File Upload Configuration
        $config['upload_path'] = './uploads/'; // Specify your upload folder
        $config['allowed_types'] = 'gif|jpg|jpeg|png|webp'; // Define allowed file types
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
            $this->UploadModel->insert_file_img($id_pegawai, $file_path);
    
            // Redirect or display a success message
            redirect('pegawai/detail/' . $id_pegawai);
        }
    }

    public function process_file($id_pegawai) {
        // File Upload Configuration
        $config['upload_path'] = './uploads/'; // Specify your upload folder
        $config['allowed_types'] = 'pdf|xls|xlsx|doc|docx'; // Define allowed file types
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
            $this->UploadModel->insert_file_file($id_pegawai, $file_path);
    
            // Redirect or display a success message
            redirect('pegawai/detail/' . $id_pegawai);
        }
    }
    
    public function delete_img($id_pegawai) {
        // Load the UploadModel
        $this->load->model('UploadModel');
    
        // Call the delete_file_paths method to delete file paths
        if ($this->UploadModel->delete_img($id_pegawai)) {
            // Redirect or display a success message
            redirect('pegawai/detail/' . $id_pegawai);
        } else {
            // Handle deletion error
            // You can display an error message or redirect to an error page
            // Example: redirect('error_page');
        }
    }

    public function delete_file($id_pegawai) {
        // Load the UploadModel
        $this->load->model('UploadModel');
    
        // Call the delete_file_paths method to delete file paths
        if ($this->UploadModel->delete_file($id_pegawai)) {
            // Redirect or display a success message
            redirect('pegawai/detail/' . $id_pegawai);
        } else {
            // Handle deletion error
            // You can display an error message or redirect to an error page
            // Example: redirect('error_page');
        }
    }
    
    
}