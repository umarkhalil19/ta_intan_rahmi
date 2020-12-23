<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>
    <?php if (isset($_GET['notif'])) : _notif($this->session->flashdata($_GET['notif']));
    endif; ?>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <!-- Illustrations -->
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="text-center">
                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 15rem;" src="<?= base_url() ?>assets/img/new-unimal.jpeg" alt="">
                    </div>
                    <h3 align="center">Sistem Klasifikasi Tugas Akhir Teknik Informatika Menggunakan K-Nearest Neighbor (KNN) Tahun : <?= date('Y') ?></h3>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->