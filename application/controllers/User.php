<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	function __construct()
	{
		parent ::__construct();	
		$this->load->model('m_user');
	}

	function index()
	{
		$this->load->view('components/header');
		$this->load->view('index');
		$this->load->view('components/footer');
	}

	function login()
	{
		$this->load->view('components/header');
		$this->load->view('user/login');
		$this->load->view('components/footer');
	}

	function bakpia()
	{
		$data['query'] = $this->mupload->get_allimage(); //query dari model
		$this->load->view('components/header');
		$this->load->view('user/bakpia/index',$data);
		$this->load->view('components/footer');
	}

	function rasa()
	{
		$this->load->view('components/header');
		$this->load->view('user/bakpia/rasa');
		$this->load->view('components/footer');
	}
}
