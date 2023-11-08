</div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <!--<b>Version</b> 3.0.5 -->
    </div>
    <strong>Copyright &copy; 2023 <a href="http://adminlte.io">Admin MCE</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?= base_url('assets/template')?>/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url('assets/template')?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="<?= base_url('assets/template')?>/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url('assets/template')?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url('assets/template')?>/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url('assets/template')?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url('assets/template')?>/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url('assets/template')?>/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": false,
      "searching": false,
      "lengthChange": true,

    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });


</script>
<script>
$(document).ready(function (){
    //Add event listeners to the filter select elements
    $('#filter_nama, #filter_ska_skk, #filter_grade_ska, #filter_keterangan, #filter_status').on('change', function () {
      filterTable();
});

    //Function to filter the table based on the selected name and SKA/SKK
    function filterTable(){
      var selectedName = $('#filter_nama').val();
      var selectedSkaSkk = $('#filter_ska_skk').val();
      var selectedGradeSka = $('#filter_grade_ska').val(); 
      var selectedKeterangan = $('#filter_keterangan').val();
      var selectedStatus = $('#filter_status').val();

      $('#example1 tbody tr').each(function () {
        var nameCellText = $(this).find('td:eq(1)').text();
        var skaSkkCellText = $(this).find('td:eq(2)').text();
        var gradeSkaCellText = $(this).find('td:eq(3)').text(); 
        var keteranganCellText = $(this).find('td:eq(4)').text();
        var statusCellText = $(this).find('td:eq(5)').text();

        var nameMatch = selectedName === '' || nameCellText === selectedName;
        var skaSkkMatch = selectedSkaSkk === '' || skaSkkCellText === selectedSkaSkk;
        var gradeSkaMatch = selectedGradeSka === '' || gradeSkaCellText === selectedGradeSka;
        var keteranganMatch = selectedKeterangan === '' || keteranganCellText === selectedKeterangan;
        var statusMatch = selectedStatus === '' || statusCellText === selectedStatus;

        //Check if either filter matches
        if (nameMatch && skaSkkMatch && gradeSkaMatch && statusMatch) {
            $(this).show();
        } else {
            $(this).hide();
        }
      });
    }

    //Function to reset the table and show all rows
    function resetTable(){
      $('#example1 tbody tr').show();
    }
  });
</script>


</body>
</html>