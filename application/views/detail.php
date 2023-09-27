<div class= "content-wrapper">
    <section class="content">
        <h4><strong>DETAIL SKA</strong></h4>

        <table class="table">
            <tr>
                <th>Nama</th>
                <td><?php echo $detail->nama ?></td>
            </tr>
            <tr>
                <th>Jenjang Studi</th>
                <td><?php echo $detail->jenjang_studi ?></td>
            </tr>
            <tr>
                <th>Tahun Kelulusan</th>
                <td><?php echo $detail->tahun_kelulusan ?></td>
            </tr>
            <tr>
                <th>SKA SKK</th>
                <td><?php echo $detail->ska_skk ?></td>
            </tr>
            <tr>
                <th>Grade SKA</th>
                <td><?php echo $detail->grade_ska ?></td>
            </tr>
            <tr>
                <th>Masa Berlaku</th>
                <td><?php echo $detail->masa_berlaku ?></td>
            </tr>
            <tr>
                <th>Sisa Waktu</th>
                <td><?php echo $remainingTime; ?></td>
            </tr>
            <tr>
                <th>Keterangan</th>
                <td><?php echo $status; ?></td>
            </tr>
            <tr>
                <th>Status</th>
                <td><?php echo $detail->status ?></td>
            </tr>
            <tr>
                </tr>
            </table>
            <form method="post" action="<?php echo base_url('upload/process/' . $id_pegawai); ?>" enctype="multipart/form-data">
                <div class="input-group">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="userfile" name="userfile">
                        <label class="custom-file-label" for="userfile">Choose file</label>
                    </div>
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-primary">Upload</button>
                    </div>
                </div>
            </form>
                <img src="<?php echo base_url($detail->file); ?>" alt="Image" width="auto" height="250">
                <a href="<?php echo base_url($detail->file); ?>" target="_blank">Download File</a>
        </section>
</div>