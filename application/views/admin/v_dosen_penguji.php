<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Dosen Penguji</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <?= form_open('admin/dosen_penguji_act'); ?>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nama</label>
                                <input type="text" class="form-control" name="nama" value="<?= $mhs->mhs_nama ?>" disabled>
                                <?= form_error('nama', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Dosen Pembimbing</label>
                                <?php
                                $dosen_p = $this->db->query("SELECT dosen_nama FROM dah_dosen WHERE dosen_nidn='$mhs->mhs_dosen_pembimbing'")->row();
                                ?>
                                <input type="text" class="form-control" name="nama" value="<?= $dosen_p->dosen_nama ?>" disabled>
                                <?= form_error('dosen', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nomor Induk Mahasiswa</label>
                                <input type="hidden" name="id" value="<?= $mhs->mhs_id ?>">
                                <input type="text" class="form-control" name="nim" value="<?= $mhs->mhs_nim ?>" disabled>
                                <?= form_error('nim', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Dosen Penguji</label>
                                <select name="dosen_penguji" class="form-control">
                                    <option value="">Pilih Dosen Pembimbing</option>
                                    <?php
                                    foreach ($dosen->result() as $d) {
                                        echo '<option value="' . $d->dosen_nidn . '">' . $d->dosen_nama . '</option>';
                                    }
                                    ?>
                                </select>
                                <?= form_error('dosen_penguji', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                        </div>
                        <div class="form-row">

                        </div>
                        <button type="submit" class="float-right btn btn-success">Simpan</button>
                        <?= form_close() ?>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->