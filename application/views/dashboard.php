<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-5">
        <table class="table table-bordered table-hover">
            <tr class="default">
                <td colspan="2" align="center"><strong>Data SKA</strong></td>
            </tr>
            <tr class="danger">
                <td>Total Pegawai</td>
                <td align="center">
                    <?php
                    $totalPegawai = count($pegawai);
                    echo $totalPegawai;
                    ?>
                </td>
            </tr>
            <tr class="success" bgcolor="#90EE90">
                <td>SKA Hidup</td>
                <td align="center">
                <?php echo $countHidup; ?>
                </td>
            </tr>
            <tr class="info" bgcolor="#ffb53e">
            <td>SKA Kritis</td>
            <td align="center">
            <?php echo $countKritis; ?>
            </td>
        </tr>

            <tr class="warning" bgcolor="#f9243f">
                <td>SKA Mati</td>
                <td align="center">
                <?php echo $countMati; ?>
                </td>
            </tr>
        </table>
    </div>
</div>