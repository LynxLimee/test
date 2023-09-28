<style>
/* Define styles for PDF file extension */
.file-extension-icon.pdf {
    background-color: #FF5733; /* Choose your desired background color */
    color: white; /* Text color for better visibility */
    padding: 2px 5px; /* Adjust padding as needed */
    border-radius: 3px; /* Add rounded corners */
}

/* Define styles for XLSX file extension */
.file-extension-icon.xlsx {
    background-color: #1D6F42; /* Choose your desired background color */
    color: white; /* Text color for better visibility */
    padding: 2px 5px; /* Adjust padding as needed */
    border-radius: 3px; /* Add rounded corners */
}

</style>

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
        </section>

    <div class="card">
    <div class="card-body">
        <h5>Files</h5>
        <div class="row">
            <div class="col-md-6">
                <div class="card mb-1 shadow-none border border-light">
                    <div class="p-2">
                        <div class="row align-items-center">
                        <!-- Modify the HTML for the file display section -->
                        <div class="col-auto">
                            <?php
                            $fileExtension = pathinfo($detail->file_img, PATHINFO_EXTENSION);
                            if ($fileExtension == 'pdf') :
                            ?>
                                <span class="file-extension-icon pdf">PDF</span>
                            <?php elseif ($fileExtension == 'xlsx') : ?>
                                <span class="file-extension-icon xlsx">XLSX</span>
                            <?php else : ?>
                                <img src="<?= base_url($detail->file_img); ?>"
                                    class="avatar-sm rounded" alt="file" style="max-width: 64px; max-height: 128px;"/>
                            <?php endif; ?>
                        </div>
                        <div class="col pl-0">
                            <p href="javascript:void(0);"
                                class="text-muted font-weight-bold"><?= substr($detail->file_img, 10); ?></a>
                        </div>
                        <div class="col-auto">
                            
                            <!-- Conditional display of the trash icon and upload button -->
                            <?php if (empty($detail->file_img)) : ?>
                            <!-- Display the upload button -->
                            <form id="imgForm" action="<?php echo base_url('upload/process_img/' . $id_pegawai); ?>" method="POST" enctype="multipart/form-data">
                                <!-- Trigger file input when upload icon is clicked -->
                                <label for="userfile_img" class="btn btn-link btn-lg text-muted">
                                    <i class="fas fa-upload" id="upload-icon"></i>
                                    <input type="file" class="custom-file-input" id="userfile_img" name="userfile" style="display: none;" onchange="submitForm('img')">
                                </label>
                            </form> 
                            <?php else : ?>
                                <!-- Display the download and trash icons when an image is present -->
                                <a href="<?= base_url($detail->file_img); ?>"
                                    class="btn btn-link btn-lg text-muted"
                                    target="_blank">
                                    <i class="fas fa-download"></i>
                                </a>
                                <!-- Display the trash icon and link to trigger upload/delete -->
                                <a href="<?php echo base_url('upload/delete_img/' . $id_pegawai); ?>"
                                class="btn btn-link btn-lg text-muted">
                                    <i class="fas fa-trash"></i>
                                </a>
                            <?php endif; ?>
                        </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="align-self: center;">
                <div class="card mb-1 shadow-none border border-light">
                    <div class="p-2">
                        <div class="row align-items-center">
                            <div class="col-auto">
                            <?php
                            $fileExtension = pathinfo($detail->file_file, PATHINFO_EXTENSION);
                            if ($fileExtension == 'pdf') :
                            ?>
                                <span class="file-extension-icon pdf">PDF</span>
                            <?php elseif ($fileExtension == 'xlsx') : ?>
                                <span class="file-extension-icon xlsx">XLSX</span>
                            <?php else : ?>
                                <img src="<?= base_url($detail->file_file); ?>"
                                    class="avatar-sm rounded" alt="file"/>
                            <?php endif; ?>
                            </div>
                            <div class="col pl-0">
                                <a href="javascript:void(0);"
                                    class="text-muted font-weight-bold"><?= substr($detail->file_file, 10); ?></a>
                            </div>
                            <div class="col-auto">
                            <!-- Conditional display of the trash icon and upload button -->
                            <?php if (empty($detail->file_file)) : ?>
                            <!-- Display the upload button -->
                            <form id="fileForm" action="<?php echo base_url('upload/process_file/' . $id_pegawai); ?>" method="POST" enctype="multipart/form-data">
                                <!-- Trigger file input when upload icon is clicked -->
                                <label for="userfile_file" class="btn btn-link btn-lg text-muted">
                                    <i class="fas fa-upload" id="upload-icon"></i>
                                    <input type="file" class="custom-file-input" id="userfile_file" name="userfile" style="display: none;" onchange="submitForm('file')">
                                </label>
                            </form> 
                            <?php else : ?>
                                <!-- Display the download and trash icons when an image is present -->
                                <a href="<?= base_url($detail->file_file); ?>"
                                    class="btn btn-link btn-lg text-muted"
                                    target="_blank">
                                    <i class="fas fa-download"></i>
                                </a>
                                <!-- Display the trash icon and link to trigger upload/delete -->
                                <a href="<?php echo base_url('upload/delete_file/' . $id_pegawai); ?>"
                                class="btn btn-link btn-lg text-muted">
                                    <i class="fas fa-trash"></i>
                                </a>
                            <?php endif; ?>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

<script>

function submitForm(formType) {
    // Automatically submit the form when a file is selected
    if (formType === 'img') {
        document.getElementById("imgForm").submit(); // Submit the form for image upload
    } else if (formType === 'file') {
        document.getElementById("fileForm").submit(); // Submit the form for file upload
    }
}

document.addEventListener("DOMContentLoaded", function () {
    // Get the file input element
    const fileInput = document.getElementById("userfile");

    // Get the custom file input label
    const customFileLabel = fileInput.nextElementSibling;

    // Add an event listener to the file input
    fileInput.addEventListener("change", function () {
        // Check if a file is selected
        if (fileInput.files.length > 0) {
            // Display the selected filename in the label
            customFileLabel.textContent = fileInput.files[0].name;
        } else {
            // No file selected, revert to the default label
            customFileLabel.textContent = "Choose file";
        }
    });
});
</script>
