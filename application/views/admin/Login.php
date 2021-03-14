<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= SITE_NAME; ?> - Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url(''); ?>assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="<?php echo base_url(''); ?>assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(''); ?>assets/libs/css/style.css">
    <link rel="stylesheet" href="<?php echo base_url(''); ?>assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <meta name="description" content="Management Karyawan" />
    <meta name="keywords" content="management, karyawan, karyawan management, management karyawan, kantor management" />
    <meta name="author" content="Fansa" />
    <link rel="icon" href="https://cdn2.iconfinder.com/data/icons/science-set-3/512/5-512.png" type="image/gif">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
        }
    </style>
</head>

<body class="bg-dark">
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card">
            <div class="text-center"><a class="navbar-brand text-black" href="#"><img src="<?php echo base_url(''); ?>assets/images/logos.png" alt="User Avatar" width="100px">SanzAbsensi</a><span class="">Aplikasi Absensi Pegawai</span></div>
            <div class="card-body bg-dark">
                <form method="POST" action="<?php echo base_url(); ?>auth/loginKaryawan">
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="nik" type="number" placeholder="NIK" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="password" type="password" placeholder="Kata Sandi">
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">MASUK</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
            </div>
        </div>
        Copyright © <?= date('Y'); ?> <a href="http://instagram.com/msandypr">msandypr</a>
    </div>

    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <?php $this->load->view('admin/partials/bottom'); ?>
    <script>
        <?= $this->session->flashdata('messageAlert'); ?>
    </script>
</body>

</html>