<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Latih</h1>
    </div>
    <?php if (isset($_GET['notif'])) : _notif($this->session->flashdata($_GET['notif']));
    endif; ?>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <a href="<?= base_url() . 'admin/latih_add' ?>" class="float-right btn btn-sm btn-success">Tambah Data</a>
                    <h6 class="m-0 font-weight-bold text-success">Tabel Data Latih</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Kalimat Asli</th>
                                    <th>Kalimat Proses</th>
                                    <th>Kategori</th>
                                    <th>Tipe</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($latih->result() as $l) {
                                    $class = $this->db->query("SELECT kategori_nama FROM tbl_kategori WHERE kategori_id ='$l->latih_class'")->row();
                                ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $l->latih_kalimat_asli ?></td>
                                        <td><?= $l->latih_kalimat_proses ?></td>
                                        <td><?= $class->kategori_nama ?></td>
                                        <td><?= $l->latih_category ?></td>
                                        <td>
                                            <a href="#" id="<?= base_url() . 'admin/latih_delete/' . $l->latih_id ?>" class="btn btn-delete btn-sm btn-danger" data-toggle="tooltip" data-placement="right" title="Hapus Data Latih"><span class="fas fa-fw fa-trash"></span></a>
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