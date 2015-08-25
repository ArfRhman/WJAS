<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Attendance extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['v_content'] = "attendance/list";
		$this->load->view('template',$data);
	}
	function perkuliahan(){
		$data['v_content'] = "attendance/list-perkuliahan";
		$this->load->view('template',$data);
	}
	function pengajar(){
		$data['v_content'] = "attendance/list-pengajar";
		$this->load->view('template',$data);
	}
	function mahasiswa(){
		$data['v_content'] = "attendance/list-mahasiswa";
		$this->load->view('template',$data);
	}
}
