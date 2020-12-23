<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Users</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <a href="<?= base_url() . 'admin/tambah_users' ?>" class="float-right btn btn-sm btn-success">Tambah Data</a>
                    <h6 class="m-0 font-weight-bold text-success">Tabel Data Users</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($users->result() as $u) {
                                ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $u->user_name ?></td>
                                        <td><?= $u->user_email ?></td>
                                        <td><?= $u->user_status ?></td>
                                        <td>
                                            <a href="<?= base_url() . 'admin/edit_user/' . $u->user_id ?>" class="btn btn-sm btn-primary"><span class="fas fa-fw fa-wrench"></span></a>
                                            <a href="<?= base_url() . 'admin/delete_user/' . $u->user_id ?>" class="btn btn-sm btn-danger"><span class="fas fa-fw fa-trash"></span></a>
                                        </td>
                                    </tr>
                                <?php
                                }
                                ?>
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