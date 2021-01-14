<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Hasil Pengujian Algoritma KNN</h1>
    </div>
    <?php if (isset($_GET['notif'])) : _notif($this->session->flashdata($_GET['notif']));
    endif; ?>
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-4">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-success">Tabel Term Frequency</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Kata</th>
                                    <?php for ($i = 1; $i <= $latih->num_rows() + 1; $i++) {  ?>
                                        <th><?= "D" . $i ?></th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($kata->result() as $key) :
                                ?>
                                    <tr>
                                        <td><?= $key->kata ?></td>
                                        <?php
                                        foreach ($latih->result() as $l) {
                                            $tf = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_latih WHERE kata='$key->kata' AND latih_id='$l->latih_id'");
                                            if ($q = $tf->row()) {
                                                echo '<td>' . $q->kata_frekuensi . '</td>';
                                                $df++;
                                            } else {
                                                echo '<td>' . $q = 0 . '</td>';
                                            }
                                        }
                                        $tf = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_uji WHERE kata='$key->kata' AND uji_id='$id'");
                                        if ($q = $tf->row()) {
                                            echo '<td>' . $q->kata_frekuensi . '</td>';
                                            $df++;
                                        } else {
                                            echo '<td>' . $q = 0 . '</td>';
                                        }
                                        $n = ($latih->num_rows() + 1) / $df;
                                        $data = [
                                            'wdt_kata' => $key->kata,
                                            'wdt_data' => $id,
                                            'wdt_nilai' => $tf_uji * log10($n),
                                            'wdt_category' => 'uji'
                                        ];
                                        $this->m_vic->insert_data($data, 'tbl_wdt');
                                        $data = [
                                            'vektor_kata' => $key->kata,
                                            'vektor_data' => $id,
                                            'vektor_nilai' => pow($tf_uji * log10($n), 2),
                                            'vektor_category' => 'uji'
                                        ];
                                        $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                                        ?>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-success">Tabel WDT = TF*IDF</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Kata</th>
                                    <?php for ($i = 1; $i <= $latih->num_rows() + 1; $i++) {  ?>
                                        <th><?= "D" . $i ?></th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($kata->result() as $key) :
                                ?>
                                    <tr>
                                        <td><?= $key->kata ?></td>
                                        <?php
                                        foreach ($latih->result() as $l) {
                                            $wdt = $this->db->query("SELECT wdt_nilai FROM tbl_wdt WHERE wdt_kata='$key->kata' AND wdt_data='$l->latih_id' AND wdt_category='latih'")->row();
                                            echo '<td>' . $wdt->wdt_nilai . '</td>';
                                        }
                                        $wdt = $this->db->query("SELECT wdt_nilai FROM tbl_wdt WHERE wdt_kata='$key->kata' AND wdt_data='$id' AND wdt_category='uji'")->row();
                                        echo '<td>' . $wdt->wdt_nilai . '</td>';
                                        ?>
                                    </tr>
                                <?php endforeach; ?>
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