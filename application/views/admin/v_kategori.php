<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Kategori</h1>
    </div>
    <?php if (isset($_GET['notif'])) : _notif($this->session->flashdata($_GET['notif']));
    endif; ?>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <a href="<?= base_url() . 'admin/kategori_add' ?>" class="float-right btn btn-sm btn-success">Tambah Data</a>
                    <h6 class="m-0 font-weight-bold text-success">Tabel Data Kategori</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nama Kategori</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($kategori->result() as $k) {
                                ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $k->kategori_nama ?></td>
                                        <td>
                                            <a href="<?= base_url() . 'admin/kategori_edit/' . $k->kategori_id ?>" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="right" title="Edit Kategori"><span class="fas fa-fw fa-wrench"></span></a>
                                            <a href="#" id="<?= base_url() . 'admin/kategori_delete/' . $k->kategori_id ?>" class="btn btn-delete btn-sm btn-danger" data-toggle="tooltip" data-placement="right" title="Hapus Kategori"><span class="fas fa-fw fa-trash"></span></a>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->