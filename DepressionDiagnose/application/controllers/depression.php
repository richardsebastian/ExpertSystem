<?php
defined('BASEPATH') or exit('No direct script access allowed');

class depression extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    cekLogin();
    $this->load->model('depression_model', 'depression');
    $this->load->library('form_validation');
  }

  // Halaman depression
  public function index()
  {
    $data['judul'] = "Halaman depression";
    $data['user'] = $this->db->get_where('tbl_user', [
      'username' => $this->session->userdata('username')
    ])->row_array();
    $data['tbl_depression'] = $this->depression->getAlldepression();
    $data['kode'] = $this->depression->Kodedepression();

    $this->load->view('templates/Admin_header', $data);
    $this->load->view('templates/Admin_sidebar', $data);
    $this->load->view('templates/Admin_topbar');
    $this->load->view('admin/depression/index', $data);
    $this->load->view('templates/Admin_footer');
    $this->load->view('admin/depression/modal_tambah_depression', $data);
    $this->load->view('admin/depression/modal_ubah_depression');
  }

  // Tambah depression
  public function tambah()
  {
    $data['tbl_depression'] = $this->db->get('tbl_depression')->result_array();
    $data['user'] = $this->db->get_where('tbl_user', [
      'username' => $this->session->userdata('username')
    ])->row_array();

    // cek jika ada gambar yang akan diupload
    $upload_image = $_FILES['gambar']['name'];
    if ($upload_image) {
      $config['allowed_types'] = 'jpg|png';
      $config['max_size']      = '4096';
      $config['upload_path'] = './assets/images/depression/';

      $this->load->library('upload', $config);
      if ($this->upload->do_upload('gambar')) {
        // $old_image = $data['tbl_depression']['gambar'];
        // if ($old_image != 'user.png') {
        //   unlink(FCPATH . '/assets/images/depression/' . $old_image);
        // }
        $new_image = $this->upload->data('file_name');
        $this->db->set('gambar', $new_image);
        // } else {
        //   echo $this->upload->dispay_errors();
        // }
      }
      $this->depression->tambahdepression();
      $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Data depression Berhasil ditambahkan!</div>'); //buat pesan akun berhasil dibuat
      redirect('depression');
    }
  }

  // Ubah depression
  public function ubahdepression()
  {
    $data['user'] = $this->db->get_where('tbl_user', [
      'username' => $this->session->userdata('username')
    ])->row_array();

    // cek jika ada gambar yang akan diupload
    $upload_image = $_FILES['gambar']['name'];
    if ($upload_image) {
      $config['allowed_types'] = 'jpg|png';
      $config['max_size']      = '4096';
      $config['upload_path'] = './assets/images/depression/';

      $this->load->library('upload', $config);
      if ($this->upload->do_upload('gambar')) {
        // $old_image = $data['tbl_depression']['gambar'];
        // if ($old_image != 'user.png') {
        //   unlink(FCPATH . '/assets/images/depression/' . $old_image);
        // }
        $new_image = $this->upload->data('file_name');
        // var_dump($new_image);
        // die;
        $this->db->set('gambar', $new_image);
        // } else {
        //   echo $this->upload->dispay_errors();
        // }

        $this->depression->ubahdepression();
        $this->session->set_flashdata('pesan', '<div class="alert alert-info" role="alert">Data depression Berhasil diubah!</div>'); //buat pesan akun berhasil dibuat
        redirect('depression');
      }
    }
  }

  // Hapus depression
  public function hapus($id)
  {
    $this->depression->hapusdepression($id);
    $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Data depression Berhasil dihapus!</div>'); //buat pesan akun berhasil dibuat
    redirect('depression');
  }
}
