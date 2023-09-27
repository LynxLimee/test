<form action="<?= base_url('pegawai/tambah_aksi') ?>" method="POST">
    <div class="form-group">
        <label>Nama</label>
        <input type="text" name="nama" class="form-control">
        <?= form_error('nama_pegawai', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>Jenjang Studi</label>
        <select type="text" name="jenjang_studi" class="form-control">
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
        <input type="text" name="tahun_kelulusan" class="form-control">
        <?= form_error('tahun_kelulusan', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>SKA SKK</label>
        <select type="text" name="ska_skk" class="form-control">
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
        <select type="text" name="grade_ska" class="form-control">
            <option value="1">---Pilih Grade SKA---</option>
            <option value="MUDA">MUDA</option>
            <option value="MADYA">MADYA</option>
            <option value="UTAMA">UTAMA</option>
        </select>
    </div>
    <div class="form-group">
        <label>Masa Berlaku</label>
        <input type="date" name="masa_berlaku" class="form-control">
        <?= form_error('masa_berlaku', '<div class="text-small text-danger">', '</div>'); ?>
    </div>
    <div class="form-group">
        <label>Status</label>
        <select type="text" name="status" class="form-control">
            <option value="-">---Pilih Status---</option>
            <option value="INTERNAL">INTERNAL</option>
            <option value="LUAR">LUAR</option>
        </select>
    </div>

    <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i>Simpan</button>
    <button type="reset" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i>Reset</button>
</form>