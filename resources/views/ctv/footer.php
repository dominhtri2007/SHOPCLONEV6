<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}?>


<footer class="main-footer">
    <div class="float-right d-none d-sm-inline">
        Phiên bản <b style="color:red;"><?=$config['version'];?></b>
    </div>
    <strong>Copyright &copy; 2020-2021 <a href="https://www.cmsnt.co/" target="_blank">CMSNT.CO</a>.</strong> All rights
    reserved.
</footer>
</div>
<script type="text/javascript">
 $(function() {
    $('#datatable').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });
    $('#datatable1').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });
    $('#datatable2').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });

});
</script>
<!-- jQuery UI 1.11.4 -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/pages/dashboard.js"></script>
<!-- ChartJS -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/chart.js/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>
<?=$body['footer'];?>
</body>

</html>