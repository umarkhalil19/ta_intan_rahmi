<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Kategori</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <?= form_open('admin/kategori_update'); ?>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Nama Kategori</label>
                                <input type="hidden" name="id" value="<?= $kategori->kategori_id ?>">
                                <input type="text" class="form-control" name="nama" value="<?= $kategori->kategori_nama ?>">
                                <?= form_error('nama', '<small><span class="text-danger">', '</span></small>'); ?>
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