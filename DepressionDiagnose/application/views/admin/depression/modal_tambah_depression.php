<!-- Modal Tambah -->
<div class="modal fade" id="tambahdepression" tabindex="-1" role="dialog" aria-labelledby="forModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title" id="apasih">Tambah Tingkat Depresi</h5>
      </div>
      <?= form_open_multipart('depression/tambah'); ?>
      <div class="modal-body">
        <input type="hidden" name="id" id="id">

        <div class="form-group">
          <label for="nama">Kode Depresi</label>
          <input type="text" class="form-control" id="kode" name="kode" placeholder="Kode depression" value="<?= $kode; ?>" readonly>
        </div>

        <div class="form-group">
          <label for="nama">Nama Depresi</label>
          <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama depression">
        </div>

        <div class="form-group">
          <label for="probabilitas">Nilai Probabilitas</label>
          <input type="text" class="form-control" id="probabilitas" name="probabilitas" placeholder="Nilai Probabilitas">
        </div>

        <div class="form-group">
          <label for="gambar">Masukkan Gambar Depresi</label>
          <input type="file" class="form-control" id="gambar" name="gambar" placeholder="Gambar Hardware">
        </div>

        <div class="form-group">
          <label for="solusi">Solusi</label>
          <textarea id="solusi" class="form-control" name="solusi" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="255" data-parsley-minlength-solusi=Masukkan Solusi..." data-parsley-validation-threshold="10">
          </textarea>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-round btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-round btn-primary">Tambah</button>
      </div>
      </form>
    </div>
  </div>
</div>