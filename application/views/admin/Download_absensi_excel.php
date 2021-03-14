 <?php
 
 header("Content-type: application/vnd-ms-excel");
 
 header("Content-Disposition: attachment; filename=absensi.xls");
 
 header("Pragma: no-cache");
 
 header("Expires: 0");

 ?>
<u><center><h3>Absensi Karyawan Tanggal <?= date('d-m-Y') ?></h3></center></u>
<table border="1" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th style="text-align: center">No</th>
            <th style="text-align: center">Nik</th>
            <th style="text-align: center">Nama</th>
            <th style="text-align: center">Waktu</th>
            <th style="text-align: center">Tanggal</th>
        </tr>
    </thead>
    <tbody style="font-size: 14pt">
        <?php $no = 1; foreach($karyawan as $rows) { ?>
            <tr title="Klik untuk Scan atau Lihat Detail" onclick="detailModal(this)">
                <td><center><?php echo $no++; ?></center></td>
                <td><center><?php echo $rows->nik; ?></center></td>
                <td><center><?php echo $rows->name; ?></center></td>
                <td><center><?php echo $rows->waktu; ?></center></td>
                <td><center><?php echo date('l d-m-Y',strtotime($rows->tanggal)); ?></center></td>
            </tr>
        <?php } ?>                        
    </tbody>
</table> 
