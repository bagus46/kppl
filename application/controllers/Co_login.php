<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Co_login extends CI_Controller {

//	function index(){
//		$this->load->view('login');
//	}
	function masukuser(){

		$username = $this->input->post('username');
		$password = $this->input->post('password');
	
		
		$cek2=$this->Mo_database->cek2($username,$password);
		
	if($cek2 ->num_rows() ==1){
			foreach ($cek2 -> result() as $data) {
				$sess_data['id_user'] = $data->Id_user;
				$sess_data['Username'] = $data->Username;
				$this->session->set_userdata($sess_data);
			}

			redirect('Co_databaseuser/new_produk');
			
		}
		else{

			$this->session->set_flashdata('pesan', 'user / password salah !');
			redirect('panggil/loginuser');

		}
	}

function masukadmin(){

		$username = $this->input->post('username');
		$password = $this->input->post('password');
	
		$cek = $this->Mo_database->cek($username,$password);
		
		if($cek ->num_rows() ==1){

			foreach ($cek -> result() as $data) {
				$sess_data['id_admin'] = $data->id_admin;
				$sess_data['username'] = $data->username;
				$this->session->set_userdata($sess_data);
			}

			redirect('Co_database/sepatu');
		}
		
		else{

			$this->session->set_flashdata('pesan', 'user / password salah !');
			redirect('panggil/login');

		}
	}
	function keluar(){
		$this->session->sess_destroy();
		redirect('panggil/loginuser');
	}
	function daftar(){
		$Username = $_POST['Username'];
		$Email = $_POST['Email'];
		$Pass = $_POST['Password'];
		
		$data_insert = array('Username' => $Username, 
							'Pass' => $Pass ,
							'Email' => $Email
							);

		$res = $this->Mo_database->insertData('user', $data_insert);

		if($res >= 1){
			redirect('panggil/loginuser');
		}else{
			redirect('panggil/daftar');
		}
		
		
		
	}
}
