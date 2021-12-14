<?php
class Diagnosa_model extends CI_model
{
  // Mengosongkan tabel tmp_gejala sebelum digunakan
  public function kosongTmpGejala()
  {
    return $this->db->truncate('tmp_gejala');
  }

  // mengosongkan tabel tmp_final sebelum digunakan
  public function kosongTmpFinal()
  {
    return  $this->db->truncate('tmp_final');
  }

  // memasukkan gejala terpilih ke tabel tmp_gejala
  public function insertTmpGejala()
  {
    $gejala = $this->input->post('id_gejala');
    $membernya = $this->db->get_where('tbl_user', [
      'username' => $this->session->userdata('username')
    ])->row_array();
    $member = $membernya['id_user'];

    foreach ($gejala as $g) {
      $data = [
        'id_user' => $member,
        'id_gejala' => $g
      ];
      $this->db->insert('tmp_gejala', $data);
    }
  }

  // memasukkan ke tmp_final
  public function insertTmpFinal()
  {
    $query = "SELECT `tmp_gejala`.`id_gejala`,`tbl_pengetahuan`.`id_depression`,`tbl_pengetahuan`.`probabilitas`
    FROM `tbl_pengetahuan` JOIN `tmp_gejala`
    ON `tmp_gejala`.`id_gejala` = `tbl_pengetahuan`.`id_gejala`";
    return $this->db->query($query)->result_array();
  }

  // Perhitungan tiap depression
  // Perhitungan depression 1
  // Perhitungan Probabilitas tiap depression yang ada di tmp_final
  public function ProbK1()
  {
    $this->db->select('*');
    $this->db->from('tmp_final');
    $this->db->where('id_depression', 1);
    $prob = $this->db->get()->result();
    //inisialisasi untuk total probabilitas
    $jumlah = 1;
    foreach ($prob as $pr) {
      $jumlah = $jumlah * $pr->probabilitas;
    }
    // Perhitungan hasil bayes depression 1
    // (Prob depression di tmp_final * prob di tabel depression)
    $this->db->select('*');
    $this->db->from('tbl_depression');
    $this->db->where('id_depression', 1);
    $data = $this->db->get()->result();
    foreach ($data as $rowku) {
      $hasilBayes = $jumlah * $rowku->probabilitas;
    }
    return $hasilBayes;
  }

  // Perhitungan depression 2
  // Perhitungan Probabilitas tiap depression yang ada di tmp_final
  public function ProbK2()
  {
    $this->db->select('*');
    $this->db->from('tmp_final');
    $this->db->where('id_depression', 2);
    $prob = $this->db->get()->result();
    //inisialisasi untuk total probabilitas
    $jumlah = 1;
    foreach ($prob as $pr) {
      $jumlah = $jumlah * $pr->probabilitas;
    }
    // Perhitungan hasil bayes depression 2
    // (Prob depression di tmp_final * prob di tabel depression)
    $this->db->select('*');
    $this->db->from('tbl_depression');
    $this->db->where('id_depression', 2);
    $data = $this->db->get()->result();
    foreach ($data as $rowku) {
      $hasilBayes = $jumlah * $rowku->probabilitas;
    }
    return $hasilBayes;
  }

  // Perhitungan depression 3
  // Perhitungan Probabilitas tiap depression yang ada di tmp_final
  public function ProbK3()
  {
    $this->db->select('*');
    $this->db->from('tmp_final');
    $this->db->where('id_depression', 3);
    $prob = $this->db->get()->result();
    //inisialisasi untuk total probabilitas
    $jumlah = 1;
    foreach ($prob as $pr) {
      $jumlah = $jumlah * $pr->probabilitas;
    }
    // Perhitungan hasil bayes depression 3
    // (Prob depression di tmp_final * prob di tabel depression)
    $this->db->select('*');
    $this->db->from('tbl_depression');
    $this->db->where('id_depression', 3);
    $data = $this->db->get()->result();
    foreach ($data as $rowku) {
      $hasilBayes = $jumlah * $rowku->probabilitas;
    }
    return $hasilBayes;
  }

  // Perhitungan depression 4
  // Perhitungan Probabilitas tiap depression yang ada di tmp_final
  public function ProbK4()
  {
    $this->db->select('*');
    $this->db->from('tmp_final');
    $this->db->where('id_depression', 4);
    $prob = $this->db->get()->result();
    //inisialisasi untuk total probabilitas
    $jumlah = 1;
    foreach ($prob as $pr) {
      $jumlah = $jumlah * $pr->probabilitas;
    }
    // Perhitungan hasil bayes depression 4
    // (Prob depression di tmp_final * prob di tabel depression)
    $this->db->select('*');
    $this->db->from('tbl_depression');
    $this->db->where('id_depression', 4);
    $data = $this->db->get()->result();
    foreach ($data as $rowku) {
      $hasilBayes = $jumlah * $rowku->probabilitas;
    }
    return $hasilBayes;
  }

  // Perhitungan depression 4
  // Perhitungan Probabilitas tiap depression yang ada di tmp_final
  public function ProbK5()
  {
    $this->db->select('*');
    $this->db->from('tmp_final');
    $this->db->where('id_depression', 5);
    $prob = $this->db->get()->result();
    //inisialisasi untuk total probabilitas
    $jumlah = 1;
    foreach ($prob as $pr) {
      $jumlah = $jumlah * $pr->probabilitas;
    }
    // Perhitungan hasil bayes depression 5
    // (Prob depression di tmp_final * prob di tabel depression)
    $this->db->select('*');
    $this->db->from('tbl_depression');
    $this->db->where('id_depression', 5);
    $data = $this->db->get()->result();
    foreach ($data as $rowku) {
      $hasilBayes = $jumlah * $rowku->probabilitas;
    }
    return $hasilBayes;
  }
  // End Perhitungan tiap depression


  // Update Hasil Probabilitas pada tmp_final
  public function hasilProbK1($K1)
  {
    $hasilK1 = ['hasil_probabilitas' => $K1];
    $this->db->where('id_depression', 1);
    $this->db->update('tmp_final', $hasilK1);
  }
  public function hasilProbK2($K2)
  {
    $hasilK2 = ['hasil_probabilitas' => $K2];
    $this->db->where('id_depression', 2);
    $this->db->update('tmp_final', $hasilK2);
  }
  public function hasilProbK3($K3)
  {
    $hasilK3 = ['hasil_probabilitas' => $K3];
    $this->db->where('id_depression', 3);
    $this->db->update('tmp_final', $hasilK3);
  }
  public function hasilProbK4($K4)
  {
    $hasilK4 = ['hasil_probabilitas' => $K4];
    $this->db->where('id_depression', 4);
    $this->db->update('tmp_final', $hasilK4);
  }
  public function hasilProbK5($K5)
  {
    $hasilK5 = ['hasil_probabilitas' => $K5];
    $this->db->where('id_depression', 5);
    $this->db->update('tmp_final', $hasilK5);
  }
  // End Update Hasil Probabilitas pada tmp_final


  // Menampilkan Hasil diagnosa

  // (Mendapatkan 3 depression dengan probabilitas yang terbesar)
  public function diagnosa()
  {
    $query = "SELECT DISTINCT `id_depression`,`hasil_probabilitas`
    FROM `tmp_final`
    ORDER BY `tmp_final`.`hasil_probabilitas` DESC LIMIT 3";
    return $this->db->query($query)->result_array();
  }

  // Mendapatkan 1 depression dengan probabilitas terbesar
  public function tertinggi()
  {
    $query = "SELECT `id_depression`, MAX(`hasil_probabilitas`) FROM `tmp_final` GROUP BY `id_depression` ORDER BY `hasil_probabilitas` DESC LIMIT 1";
    return $this->db->query($query)->result_array();
  }

  // Menampilkan Detail Hasil Akhir Diagnosa
  public function detailDiagnosa()
  {
    $query = "SELECT `tmp_final`.`id_depression`, MAX(`hasil_probabilitas`) as `hasil_probabilitas`,`tbl_depression`.`nama_depression`, `tbl_depression`.`gambar`,`tbl_depression`.`solusi` FROM `tmp_final` JOIN `tbl_depression` ON `tmp_final`.`id_depression` = `tbl_depression`.`id_depression` GROUP BY `id_depression` ORDER BY `hasil_probabilitas` DESC LIMIT 1";
    return $this->db->query($query)->result_array();
  }
  // End Menampilkan Hasil diagnosa

  // Memasukkan hasil diagnosa ke tbl_hasil_diagnosa
  public function insertHasil()
  {
    $this->db->select('*');
    $this->db->from('tbl_user');
    $this->db->where('username', $this->session->userdata('username'));
    $data = $this->db->get()->result();
    foreach ($data as $row) {
      $nama = $row->nama_user;
    }
    $depression = $this->detailDiagnosa();
    foreach ($depression as $k) {
      $depressionnya = $k['nama_depression'];
      $nilai = floor($k['hasil_probabilitas'] * 100);
      $solusi = $k['solusi'];
    }
    $data = [
      'hasil_probabilitas' => $nilai,
      'nama_depression' => $depressionnya,
      'nama_user' => $nama,
      'solusi' => $solusi,
      'waktu' => time()
    ];
    return $this->db->insert('tbl_hasil_diagnosa', $data);
  }
}
