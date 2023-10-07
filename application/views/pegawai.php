<?= $this->session->flashdata('pesan'); ?>

    <div class="card">
    <div class="card-header">
    <a href="<?= base_url('pegawai/tambah') ?>" class="btn btn-success btn-sm"><i class="fas fa-plus"></i> Tambah Pegawai</a>
    </div>

    <div class="navbar-form" style="display: flex; align-items: center; justify-content: flex-end;">
    <?php echo form_open('pegawai/search')?>
    <div style="display: flex;">
        <input type="text" name="keyword" class="form-control" style="width: 300px;" placeholder="Search">
        <button type="submit" class="btn btn-success">Cari</button>
    </div>
    <?php echo form_close()?>
    </div>

    <!-- /.card-header -->
    <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
            <thead>
                <tr class="text-center">
                    <th>No</th>
                    <th>Nama</th>
                    <!--<th>Jenjang Studi</th>-->
                    <!--<th>Tahun Kelulusan</th>-->
                    <th>SKA/SKK</th>
                    <!--<th>Grade SKA</th>-->
                    <th>Masa Berlaku</th>
                    <th>Sisa Waktu</th>
                    <th>Keterangan</th>
                    <!--<th>Status</th>-->
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <?php $no = 1; 
            foreach($pegawai as $pgw) : ?>
                    <tr class="text-left">
                        <td><?= $no++ ?></td>
                        <td><?= $pgw->nama ?></td>
                        <!--<td><?= $pgw->jenjang_studi ?></td>-->
                        <!--<td><?= $pgw->tahun_kelulusan ?></td>-->
                        <td><?= $pgw->ska_skk ?></td>
                        <!--<td><?= $pgw->grade_ska ?></td>-->
                        <td><?= $pgw->masa_berlaku ?></td>
                        <td><?php
                            // Set the time zone to match your server's time zone
                            date_default_timezone_set('Asia/Jakarta');

                            // Get the current date and time (end of the day)
                            $currentDate = new DateTime('now');
                            $currentDate->setTime(23, 59, 59);

                            // Get the expired date from your data (replace this with your actual expired date)
                            $expiredDate = new DateTime($pgw->masa_berlaku);
                            $expiredDate->setTime(23, 59, 59);

                            // Calculate the interval
                            $interval = $currentDate->diff($expiredDate);

                            // Check if the expiration date is in the future
                            if ($expiredDate > $currentDate) {
                                // Remaining time is in the future, display as usual
                                $remainingYears = $interval->y;
                                $remainingMonths = $interval->m;
                                $remainingDays = $interval->d;
                            } else {
                                // Expiration date is in the past, return a negative value
                                $remainingYears = -$interval->y;
                                $remainingMonths = -$interval->m;
                                $remainingDays = -$interval->d;
                            }

                            // Create an array to store the time components
                            $timeComponents = [];

                            // Add years to the array if it's not zero
                            if ($remainingYears !== 0) {
                                $timeComponents[] = "$remainingYears th" . ($remainingYears > 1 || $remainingYears < -1 ? '' : '');
                            }

                            // Add months to the array if it's not zero
                            if ($remainingMonths !== 0) {
                                $timeComponents[] = "$remainingMonths bln" . ($remainingMonths > 1 || $remainingMonths < -1 ? '' : '');
                            }

                            // Add days to the array if it's not zero
                            if ($remainingDays !== 0) {
                                $timeComponents[] = "$remainingDays hari" . ($remainingDays > 1 || $remainingDays < -1 ? '' : '');
                            }


                            // Determine the color based on your conditions
                              if ($expiredDate > $currentDate && $interval->days >= 50) {
                                $textColor = 'green'; // Green color for "HIDUP"
                            } elseif ($interval->days < 50 && $interval->invert == 0) {
                                $textColor = 'orange'; // Orange color for "KRITIS"
                            } else {
                                $textColor = 'red'; // Red color for "MATI"
                            }
                            
                            // Display the remaining time with the determined text color
                            echo '<span style="color: ' . $textColor . ';">' . implode(' ', $timeComponents) . '</span>';
                            ?></td>
                        <td><?php
                            // Check if the expiration date is in the future, if so, display "ACTIVE," otherwise, display "INACTIVE"
                            if ($expiredDate > $currentDate && $interval->days >= 50) {
                                echo '<span class="badge badge-success">HIDUP</span>';
                            } elseif ($interval->days < 50 && $interval->invert == 0) {
                                echo '<span class="badge badge-warning">KRITIS</span>';
                            } else {
                                echo '<span class="badge badge-danger">MATI</span>';
                            }
                            ?></td>
                        <!--<td><?= $pgw->status ?></td>-->

                        <td>
                            <?php echo anchor('pegawai/detail/' . $pgw->id_pegawai, '<div class="btn btn-primary btn-sm"><i class="fas fa-folder"></i></div>')?>
                       
                       <?php
                            $login = $this->session->userdata('username');
                            // Check if the user's username is not 'petugas'
                            if ($login == 'admin') {
                            ?>
                            <button data-toggle="modal" data-target="#edit<?= $pgw->id_pegawai ?>" class="btn btn-info btn-sm"><i class="fas fa-pencil-alt"></i></button>
                            <a href="<?= base_url('pegawai/delete/' . $pgw->id_pegawai) ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin menghapus data ini?')"><i class="fas fa-trash"></i></a>
                        <?php } ?>
                        
                        </td>

                    </tr>
                    <?php endforeach ?>
                </tbody>
        </table>
    </div>
</div>

<!-- Modal Edit-->
<?php foreach($pegawai as $pgw){?>
<div class="modal fade" id="edit<?= $pgw->id_pegawai ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Pegawai</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="<?= base_url('pegawai/edit/' . $pgw->id_pegawai) ?>" method="POST">
    <div class="form-group">
        <label>Nama</label>
        <input type="text" name="nama" class="form-control" value="<?= $pgw->nama ?>" >
        <?= form_error('nama_pegawai', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>Jenjang Studi</label>
        <select type="text" name="jenjang_studi" class="form-control" value="<?= $pgw->jenjang_studi ?>">
            <option value="1">---Pilih Jenjang Studi---</option>
            <option value="S1-Sipil">S1-Sipil</option>
            <option value="S2-Sipil">S2-Sipil</option>
            <option value="S1-Arsitek">S1-Arsitek</option>
            <option value="S2-Arsitek">S2-Arsitek</option>
            <option value="S1-Lingkungan">S1-Lingkungan</option>
            <option value="S1-Elektro">S1-Elektro</option>
            <option value="S1-Mesin">S1-Mesin</option>
            <option value="S2-Mesin">S2-Mesin</option>
        </select>
    </div>
    <div class="form-group">
        <label>Tahun Kelulusan</label>
        <input type="text" name="tahun_kelulusan" class="form-control" value="<?= $pgw->tahun_kelulusan ?>">
        <?= form_error('tahun_kelulusan', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>SKA SKK</label>
        <select type="text" name="ska_skk" class="form-control" value="<?= $pgw->ska_skk ?>">
            <option value="1">---Pilih SKA SKK---</option>
            <option value="AIR MINUM">AIR MINUM</option>
            <option value="ARSITEK">ARSITEK</option>
            <option value="BANGUNAN GEDUNG">BANGUNAN GEDUNG</option>
            <option value="ELEKTRIKAL">ELEKTRIKAL</option>
            <option value="GEODESI">GEODESI</option>
            <option value="GEOTEKNIK">GEOTEKNIK</option>
            <option value="JALAN">JALAN</option>
            <option value="JEMBATAN">JEMBATAN</option>
            <option value="K3 KONSTRUKSI">K3 KONSTRUKSI</option>
            <option value="KESELAMATAN JALAN">KESELAMATAN JALAN</option>
            <option value="LINGKUNGAN">LINGKUNGAN</option>
            <option value="MANAJEMEN KONSTRUKSI">MANAJEMEN KONSTRUKSI</option>
            <option value="MANAJEMEN PROYEK">MANAJEMEN PROYEK</option>
            <option value="MANAJEMEN MUTU">MANAJEMEN MUTU</option>
            <option value="MEKANIKAL">MEKANIKAL</option>
            <option value="SUMBER DAYA AIR">SUMBER DAYA AIR</option>
            <option value="ILUMINASI">ILUMINASI</option>
            <option value="SANITASI DAN LIMBAH">SANITASI DAN LIMBAH</option>
            <option value="PERENCANAAN WILAYAH">PERENCANAAN WILAYAH</option>
            <option value="TENAGA LISTRIK">TENAGA LISTRIK</option>
            <option value="DESAIN INTERIOR">DESAIN INTERIOR</option>
        </select>
    </div>
    <div class="form-group">
        <label>Grade SKA</label>
        <select type="text" name="grade_ska" class="form-control" value="<?= $pgw->grade_ska ?>">
            <option value="1">---Pilih Grade SKA---</option>
            <option value="MUDA">MUDA</option>
            <option value="MADYA">MADYA</option>
            <option value="UTAMA">UTAMA</option>
        </select>
    </div>
    <div class="form-group">
        <label>Masa Berlaku</label>
        <input type="date" name="masa_berlaku" class="form-control" value="<?= $pgw->masa_berlaku ?>">
        <?= form_error('masa_berlaku', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>Status</label>
        <select type="text" name="status" class="form-control" value="<?= $pgw->status ?>">
            <option value="-">---Pilih Status---</option>
            <option value="INTERNAL">INTERNAL</option>
            <option value="LUAR">LUAR</option>
        </select>
    </div>
    <div class="modal-footer">
    <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i>Simpan</button>
    <button type="reset" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i>Reset</button>
    </div>
</form>
      </div>
    </div>
  </div>
</div>
<?php } ?>

