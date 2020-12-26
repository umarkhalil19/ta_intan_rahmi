<!-- Footer -->
<footer class="sticky-footer bg-white">
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="<?= base_url() ?>assets/vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url() ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url() ?>assets/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="<?= base_url() ?>assets/vendor/chart.js/Chart.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="<?= base_url() ?>assets/js/demo/chart-area-demo.js"></script>
<script src="<?= base_url() ?>assets/js/demo/chart-pie-demo.js"></script>

<!-- Page level custom scripts -->
<script src="<?= base_url() ?>assets/js/demo/datatables-demo.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('body').on("click", ".btn-reset", function() {
            var link = $(this).attr('id');
            $('.modal-reset').modal();
            $('.btn-reset-oke').click(function() {
                location.replace(link);
            });
        });
        $('body').on("click", ".btn-delete", function() {
            var link = $(this).attr('id');
            $('.modal-delete').modal();
            $('.btn-delete-oke').click(function() {
                location.replace(link);
            });
        });
    });
</script>

<!-- modal hapus -->
<div class="modal fade modal-reset">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Peringatan</h4>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
            <div class="modal-body">
                <p>Apakah Anda yakin Ingin Melakukan Reset Password Akun Ini ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-success btn-reset-oke">Reset</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade modal-delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Peringatan</h4>
            </div>
            <div class="modal-body">
                <p>Apakah Anda yakin Ingin Menghapus Data Ini ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Batal</button>
                <button type="button" class="btn btn-success btn-delete-oke"><i class="fa fa-check"></i> Hapus</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>