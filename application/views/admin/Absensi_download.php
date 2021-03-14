<!doctype html>
<html lang="en">
 
<?php $this->load->view('admin/partials/head'); ?>
<title><?= SITE_NAME; ?> - Data Pegawai</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <?php $this->load->view('admin/partials/navbar'); ?>
        <?php $this->load->view('admin/partials/leftsidebar'); ?>
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title"><?= SITE_NAME; ?> </h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Data Pegawai Absensi Download</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- Start Data Absensi  -->
                    <!-- ============================================================== -->
                                    <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header bg-white text-white">Data Pegawai</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="data_karyawan" class="table  table-bordered first">
                                        <thead class="bg-dark">
                                            <tr>
                                                <th class="text-white">No</th>
                                                <th class="text-white">Nik</th>
                                                <th class="text-white">Nama</th>
                                                <th class="text-white">Waktu</th>
                                                <th class="text-white">Tanggal</th>
                                            </tr>
                                        </thead>
                                        <tbody class="bg-black">
                                            <?php $no = 1; foreach($karyawan as $rows) { ?>
                                            <tr>
                                                <td><?php echo $no++; ?></td>
                                                <td><?php echo $rows->nik; ?></td>
                                                <td><?php echo $rows->name; ?></td>
                                                <td><?php echo $rows->waktu; ?></td>
                                                <td><?php echo date('l d-m-Y',strtotime($rows->tanggal)); ?></td>
                                            </tr>
                                            <?php } ?>
                                            </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                </div>
                <a href="<?php echo base_url();?>karyawan/download_absensi_excel" class="btn btn-warning"><i class="fa fa-download">&nbspDownload Absensi</i></a>
            </div>
            </div>
            </div>

                    

            <?php $this->load->view('admin/partials/footer'); ?>
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <?php $this->load->view('admin/partials/bottom'); ?>
    <script>
     $(document).ready(function() {  
        $('#data_karyawan').DataTable( {  
            
        }); 
    });
    </script>
</body>
 
</html>