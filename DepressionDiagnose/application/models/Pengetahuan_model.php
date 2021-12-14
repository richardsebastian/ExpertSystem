<?php

class Pengetahuan_model extends CI_model
{
  // Menampilkan seluruh isi tabel Pengetahuan
  public function getAllPengetahuan()
  {
    // menampilkan seluruh data gejala yang ada di tabel gejala.
    $queryRule = "SELECT `tbl_pengetahuan`.`id`,`tbl_depression`.`kode_depression`,`tbl_depression`.`nama_depression`,`tbl_gejala`.`kode_gejala`,`tbl_gejala`.`nama_gejala`,`tbl_pengetahuan`.`probabilitas`
    FROM `tbl_depression` JOIN `tbl_pengetahuan` 
    ON `tbl_depression`.`id_depression` = `tbl_pengetahuan`.`id_depression`
    JOIN `tbl_gejala` 
    ON `tbl_pengetahuan`.`id_gejala` = `tbl_gejala`.`id_gejala`
                        ";
    return $this->db->query($queryRule)->result_array();

    //return $this->db->get('tbl_pengetahuan')->result_array();
  }

  // Menampilkan seluruh isi tabel Gejala
  public function getAllGejala()
  {
    // menampilkan seluruh data gejala yang ada di tabel gejala.
    return $this->db->get('tbl_gejala')->result_array();
  }

  // Menampilkan seluruh isi tabel depression
  public function getAlldepression()
  {
    // menampilkan seluruh data depression yang ada di tabel depression.
    return $this->db->get('tbl_depression')->result_array();
  }

  // CRUD PENGETAHUAN
  // Tambah Data Pengetahuan
  public function tambahPengetahuan()
  {
    $data = [
      "id_depression" => $this->input->post('depression', true,),
      "id_gejala" => $this->input->post('gejala'),
      "probabilitas" => $this->input->post('probabilitas')
    ];
    $this->db->insert('tbl_pengetahuan', $data);
  }

  // Ubah Data Pengetahuan
  public function ubahPengetahuan()
  {
    $id = $this->input->post('id');
    $data = [
      "id_depression" => $this->input->post('depression'),
      "id_gejala" => $this->input->post('gejala'),
      "probabilitas" => $this->input->post('probabilitas')
    ];
    $this->db->where('id', $id);
    $this->db->update('tbl_pengetahuan', $data);
  }
  // Hapus Data Pengetahuan
  public function hapus($id)
  {
    $this->db->delete('tbl_pengetahuan', ['id' => $id]);
  }
  // END CRUD PENGETAHUAN
}
