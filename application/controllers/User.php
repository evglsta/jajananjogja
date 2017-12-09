<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	function __construct()
	{
		parent ::__construct();	
		$this->load->model('m_user');
		$this->load->model('m_bakpia');
	}

	function index()
	{
		$this->load->view('components/header');
		$this->load->view('index');
		$this->load->view('components/footer');
	}

	function daftar()
	{
		$this->load->view('components/header');
		$this->load->view('user/index');
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
		$data['query'] = $this->m_bakpia->get_allimage();
		$this->load->view('components/header');
		$this->load->view('user/bakpia/index',$data);
		$this->load->view('components/footer');
	}

	function rasa()
	{
		$data['query'] = $this->m_bakpia->get_allimagerasa();
		$this->load->view('components/header');
		$this->load->view('user/bakpia/rasa',$data);
		$this->load->view('components/footer');
	}
}
