<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Mahasiswa</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <?= form_open('admin/tambah_mahasiswa_act'); ?>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nama</label>
                                <input type="text" class="form-control" name="nama" value="<?= set_value('nama') ?>">
                                <?= form_error('nama', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Username</label>
                                <input type="text" class="form-control" name="" value="NIM" disabled>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nomor Induk Mahasiswa</label>
                                <input type="text" class="form-control" name="nim" value="<?= set_value('nim') ?>">
                                <?= form_error('nim', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Password</label>
                                <input type="text" class="form-control" name="pass" value="kp_informatika" disabled>
                                <input type="hidden" class="form-control" name="pass" value="kp_informatika">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Dosen Pembimbing</label>
                                <select name="dosen" class="form-control">
                                    <option value="">Pilih Dosen Pembimbing</option>
                                    <?php
                                    foreach ($dosen->result() as $d) {
                                        echo '<option value="' . $d->dosen_nidn . '">' . $d->dosen_nama . '</option>';
                                    }
                                    ?>
                                </select>
                                <?= form_error('dosen', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
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