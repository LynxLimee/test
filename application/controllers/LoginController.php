<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginController extends CI_Controller {
    public function __construct() {
        parent::__construct();
        // Load necessary models or libraries here
        $this->load->model('LoginModel'); // Replace 'LoginModel' with your actual user model
    }

    public function index() {
        // Check if the user is already logged in, and if so, redirect to the dashboard
        if ($this->session->userdata('user_id')) {
            redirect('dashboard'); // Change 'dashboard' to your dashboard URL
        }

        // Load the login view
        $this->load->view('login/login');
    }

    public function process() {
        // Get user input from the login form
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        // Validate user input (add more validation as needed)

        // Check user credentials against the database
        $user = $this->LoginModel->check_login($username, $password);

        if ($user) {
            // User credentials are correct, set session data
            $session_data = array(
                'user_id' => $user->id,
                'username' => $user->username,
                // Add more user-related data to the session as needed
            );

            $this->session->set_userdata($session_data);

            // Redirect to a dashboard or another page upon successful login
            redirect('dashboard'); // Change 'dashboard' to your dashboard URL
        } else {
            // Incorrect credentials, display an error message
            $data['error_message'] = 'Invalid username or password';
            $this->load->view('login/login', $data);
        }
    }

    public function logout() {
        // Destroy the user's session to log them out
        $this->session->sess_destroy();
        
        // Redirect to the login page or any other page you prefer
        redirect('login'); // Change 'login' to your login page URL
    }
    
}
