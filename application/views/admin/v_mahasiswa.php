<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Data Mahasiswa</h1>
    </div>
    <?php if (isset($_GET['notif'])) : _notif($this->session->flashdata($_GET['notif']));
    endif; ?>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <a href="<?= base_url() . 'admin/tambah_mahasiswa' ?>" class="float-right btn btn-sm btn-success">Tambah Data</a>
                    <h6 class="m-0 font-weight-bold text-success">Tabel Data Mahasiswa</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NIM</th>
                                    <th>Nama</th>
                                    <th>Dosen Pembimbing</th>
                                    <th>Dosen Penguji</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($mahasiswa->result() as $m) {
                                    $dosen = $this->db->query("SELECT dosen_nama FROM dah_dosen WHERE dosen_nidn='$m->mhs_dosen_pembimbing'")->row();
                                    if ($m->mhs_dosen_penguji == '') {
                                        $penguji = "-";
                                    } else {
                                        $dosen_2 = $this->db->query("SELECT dosen_nama FROM dah_dosen WHERE dosen_nidn='$m->mhs_dosen_penguji'")->row();
                                        $penguji = $dosen_2->dosen_nama;
                                    }
                                ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $m->mhs_nim ?></td>
                                        <td><?= $m->mhs_nama ?></td>
                                        <td><?= $dosen->dosen_nama ?></td>
                                        <td><?= $penguji ?></td>
                                        <td>
                                            <?php
                                            if ($m->mhs_status_tahap >= 5 && $m->mhs_dosen_penguji == '') {
                                                echo '<a href="' . base_url('admin/dosen_penguji/' . $m->mhs_id) . '" class="btn btn-sm btn-success"><span class="fas fa-fw fa-user"></span></a>';
                                            }
                                            ?>
                                            <a href="<?= base_url() . 'admin/edit_mahasiswa/' . $m->mhs_id ?>" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="right" title="Edit Judul"><span class="fas fa-fw fa-wrench"></span></a>
                                            <a href="<?= base_url() . 'admin/delete_mahasiswa/' . $m->mhs_id ?>" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="right" title="Hapus Data"><span class="fas fa-fw fa-trash"></span></a>
                                            <button id="<?= base_url() . 'admin/reset_pass/' . $m->mhs_id ?>" class="btn btn-sm btn-warning btn-reset" data-toggle="tooltip" data-placement="right" title="Reset Password"><span class="fas fa-fw fa-undo"></span></button>
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