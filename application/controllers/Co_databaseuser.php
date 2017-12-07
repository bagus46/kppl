<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Co_databaseuser extends CI_Controller {

	public function index()
	{
		//$data = $this->Mo_database->getData();
		//$this->load->view('admin_login', array('data' => $data));
	}
	function __construct(){
        parent::__construct();
        if(!$this->session->userdata('Username'))
			redirect('panggil/loginuser');
		

        $this->load->helper('url');
        $this->load->library('pagination');
        $this->load->database();
    }
	public function pesan($Id){
		$pesan = $this->Mo_database->getBarang($Id);
		$data = array(
			"id_sepatu" => $pesan[0]['id_sepatu'],
			"nama_sepatu" => $pesan[0]['nama_sepatu'],
			"harga" => $pesan[0]['harga']
			 );
			 
		$this->load->view('C_captcha',$data);
	}
	

   
  function search_keywordlog()
    {	

    	$config['base_url']=base_url()."index.php/Co_database/sepatu";
            $config['total_rows']= $this->db->query("SELECT * FROM sepatu;")->num_rows();
            $config['per_page']=11;
        	$config['num_links'] = 2;
            $config['uri_segment']=3;

      

            $keyword    =   $this->input->post('keyword');
          // $stringa = "SELECT * FROM `sepatu` WHERE nama_sepatu LIKE'%";
 		//$stringb="%' OR harga LIKE '%";
 		//$stringc="%'OR id_sepatu LIKE'%";
 		//$stringd="%'OR jumlah_sepatu LIKE'%";
 		$a = $this->db->query("select * FROM sepatu where nama_sepatu like '%".$keyword."%';");
 
        // konfigurasi model dan view untuk menampilkan data
	        
        
        
        if ($a->num_rows() ==0) {
        	
        	// $this->sepatu();
        	$this->session->set_flashdata('message', 'data tidak ditemukan');
        	redirect('Co_databaseuser/all_produk');
        }else
        	{
        		$data['data']    =   $this->Mo_database->search($keyword);
        		$this->load->view('produklog',$data);

        	}

    }
   
	
	function all_produk(){

    		$config['base_url']=base_url()."index.php/Co_databaseuser/all_produk";
            $config['total_rows']= $this->db->query("SELECT * FROM sepatu;")->num_rows();
            $config['per_page']=12;
        	$config['num_links'] = 2;
            $config['uri_segment']=3;

             //Tambahan untuk styling
	        $config['full_tag_open'] = "<ul class='pagination'>";
	        $config['full_tag_close'] ="</ul>";
	        $config['num_tag_open'] = '<li>';
	        $config['num_tag_close'] = '</li>';
	        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
	        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
	        $config['next_tag_open'] = "<li>";
	        $config['next_tagl_close'] = "</li>";
	        $config['prev_tag_open'] = "<li>";
	        $config['prev_tagl_close'] = "</li>";
	        $config['first_tag_open'] = "<li>";
	        $config['first_tagl_close'] = "</li>";
	        $config['last_tag_open'] = "<li>";
	        $config['last_tagl_close'] = "</li>";
 
            $config['first_link']='< Pertama ';
        	$config['last_link']='Terakhir > ';
        	$config['next_link']='> ';
        	$config['prev_link']='< ';
            $this->pagination->initialize($config);
 
        // konfigurasi model dan view untuk menampilkan data
	        $this->load->model('Mo_database');
        	$data['data']=$this->Mo_database->getAll($config , 'sepatu');
       		$this->load->view('produklog', $data);
    }
 
 	function new_produk(){

    		$config['base_url']=base_url()."index.php/Co_database/new_produk";
            $config['total_rows']= $this->db->query("SELECT * FROM sepatu where produk_baru = 1;")->num_rows();
            $config['per_page']=6;
        	$config['num_links'] = 2;
            $config['uri_segment']=3;

             //Tambahan untuk styling
	        $config['full_tag_open'] = "<ul class='pagination'>";
	        $config['full_tag_close'] ="</ul>";
	        $config['num_tag_open'] = '<li>';
	        $config['num_tag_close'] = '</li>';
	        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
	        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
	        $config['next_tag_open'] = "<li>";
	        $config['next_tagl_close'] = "</li>";
	        $config['prev_tag_open'] = "<li>";
	        $config['prev_tagl_close'] = "</li>";
	        $config['first_tag_open'] = "<li>";
	        $config['first_tagl_close'] = "</li>";
	        $config['last_tag_open'] = "<li>";
	        $config['last_tagl_close'] = "</li>";
 
            $config['first_link']='< Pertama ';
        	$config['last_link']='Terakhir > ';
        	$config['next_link']='> ';
        	$config['prev_link']='< ';
            $this->pagination->initialize($config);
 
        // konfigurasi model dan view untuk menampilkan data
	        $this->load->model('Mo_database');
        	$this->Mo_database->coba2();
        	 // $data['data']=$this->Mo_database->getAll($config , 'sepatu');
       		 // $this->load->view('homelog', $data);
    }

}
