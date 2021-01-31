<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Uji</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <?= form_open('admin/uji_add_act'); ?>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Data Uji</label>
                                <textarea name="kalimat" id="kalimat" class="form-control" cols="30" rows="10"><?= set_value('kalimat'); ?></textarea>
                                <?= form_error('kalimat', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                        </div>
                        <!-- <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Kategori</label>
                                <select name="kategori" id="kategori" class="form-control">
                                    <option value="">---- Pilih Kategori ----</option>
                                </select>
                                <?= form_error('kategori', '<small><span class="text-danger">', '</span></small>'); ?>
                            </div>
                        </div> -->
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Type</label>
                                <select name="type" id="type" class="form-control">
                                    <option value="">---- Pilih Type ----</option>
                                    <option value="Judul">Judul</option>
                                    <option value="Abstrak">Abstrak</option>
                                </select>
                                <?= form_error('type', '<small><span class="text-danger">', '</span></small>'); ?>
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