<!DOCTYPE html>
<html lang="en">
	<head>
		<?php 
			include 'koneksi.php';
		?>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 
		<title>Formulir Pilih Wilayah</title>
  
<!-- jquery -->
		<script src= "jquery/jquery-3.6.0.min.js"></script>
		<script>
			$(document).ready(function() {
			$('#propinsi').change(function() {
				var propinsi_kode = $(this).val();
			
				$.ajax({
					type	: 'POST',
					url		: 'ambilkota.php',
					data	: 'kode_provinsi='+propinsi_kode,
					success	: function(response) {
						$('#kabkota').html(response);
						}
					});
				})
			});
		</script>
		
	</head>
	<body>

		<section class="container-fluid">
        <section class="row justify-content">
        <section class="col-12 col-sm-6 col-md-4">
            <form class="form-container">
              <div class="text-center">
				</div>
					<hr>
					<h1 class="text-left font-weight-bold"> Form Pilih Wilayah </h1>
					<hr></hr>

                <!-- Form Pilih Provinsi -->
					<div class="form-group">
                        <select class="form-control" name="propinsi" id="propinsi">
                        <option value="">Pilih Provinsi</option>
                        <?php
							//koneksi ke tabel provinsi di database tugasoop2
							$provinsi = mysqli_query($connect, "SELECT * FROM tbl_provinsi");
							while($p=mysqli_fetch_array($provinsi)){
							echo "<option value=\"$p[kode_provinsi]\">$p[nama_provinsi]</option>\n";
							}
							?>
                        </select>
					</div>

                <!-- Form Pilih Kabupaten/Kota -->
					<div class="form-group">
						<select class="form-control" name="kabkota" id="kabkota">
                        <option value="">Pilih Kabupaten/Kota</option>
                        <?php
                        //koneksi ke tabel tbl_kabkota di database tugasoop2
                        $kabupatekota = mysqli_query($connect, "SELECT * FROM tbl_kabkota ORDER BY nama_kabkota");
                        while($p=mysqli_fetch_array($propinsi)){
                        echo "<option value=\"$p[kode_kabkota]\">$p[nama_kabkota]</option>\n";
                        }
                        ?>
                        </select>
					</div>
					  
	</body>
</html>