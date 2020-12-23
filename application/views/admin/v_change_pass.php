<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ubah Password</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="col-md-8">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <?= form_open('admin/update_pass'); ?>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Password Baru</label>
                                <input type="password" class="form-control" name="pass1">
                                <?= form_error('pass1', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Konfirmasi Password Baru</label>
                                <input type="password" class="form-control" name="pass2">
                                <?= form_error('pass2', '<small><span class="text-danger">', '</span></small>'); ?>
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