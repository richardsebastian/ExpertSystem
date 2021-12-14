<?php

class depression_model extends CI_model
{
  public function Kodedepression()
  {
    // Membuat kode gejala menjadi generate AI (Auto Increment)
    $query = $this->db->query("select max(kode_depression) as max_id from tbl_depression");
    $rows = $query->row();
    $kode = $rows->max_id;
    $noUrut = (int) substr($kode, 1, 2);
    $noUrut++;
    $char = "K";
    $kode = $char . sprintf("%02s", $noUrut);
    return $kode;
  }

  // CRUD depression
  // menampilkan seluruh data depression yang ada di tabel depression.
  public function getAlldepression()
  {
    return $this->db->get('tbl_depression')->result_array();
  }

  // Tambah data depression
  public function tambahdepression()
  {
    $data = [
      // Data yang ada di modal
      'kode_depression' => $this->Kodedepression(),
      'nama_depression' => $this->input->post('nama', true),
      'probabilitas' => $this->input->post('probabilitas', true),
      'solusi' => $this->input->post('solusi', true)
    ];
    $this->db->insert('tbl_depression', $data);
  }

  // Ubah Data depression
  public function ubahdepression()
  {
    $id = $this->input->post('id');
    // Mengubah data gejala
    $data = [
      "kode_depression" => $this->input->post('kode', true),
      "nama_depression" => $this->input->post('nama', true),
      "probabilitas" => $this->input->post('probabilitas', true),
      "solusi" => $this->input->post('solusi', true)
    ];
    $this->db->where('id_depression', $id);
    $this->db->update('tbl_depression', $data);
  }

  // Hapus Data depression
  public function hapusdepression($id)
  {
    $this->db->delete('tbl_depression', ['id_depression' => $id]);
  }
  // END CRUD depression
}
