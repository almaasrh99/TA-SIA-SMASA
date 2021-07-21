
   <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    Detail Profil
                </h2>
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Berikut ini adalah detail dari profil <?php echo humanize($first_name); ?> <?php echo humanize($last_name); ?>
                            </h2>
                            
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <tr><td><b>NISN</b></td><td><?php echo $nisn; ?></td></tr>
                                <tr><td><b>Nama</b></td><td><?php echo humanize($first_name); ?> <?php echo humanize($last_name); ?></td></tr>
                                <tr><td><b>Jenis Kelamin</b></td><td><?php echo $jenis_kelamin; ?></td></tr>                                
                                <tr><td><b>Tempat & Tanggal Lahir</b></td><td><?php echo $tempat_lahir; ?>, <?php echo indonesian_date($tanggal_lahir); ?></td></tr>                                
                                <tr><td><b>Alamat</b></td><td><?php echo $alamat; ?></td></tr>
                                <tr><td><b>No Telp</b></td><td><?php echo $no_telp; ?></td></tr>
                                <tr><td><b>E-mail</b></td><td><?php echo $email; ?></td></tr>
                                <tr><td><b>Nama Ayah</b></td><td><?php echo $nama_ayah; ?></td></tr>
                                <tr><td><b>Pekerjaan Ayah</b></td><td><?php echo $pekerjaan_ayah; ?></td></tr>
                                <tr><td><b>Nama Ibu</b></td><td><?php echo $nama_ibu; ?></td></tr>
                                <tr><td><b>Pekerjaan Ibu</b></td><td><?php echo $pekerjaan_ibu; ?></td></tr>
                                <tr><td><b>Tahun Masuk</b></td><td><?php echo $tahun_masuk; ?></td></tr>
                                <tr><td><b>Tahun Lulus</b></td><td><?php echo $tahun_lulus; ?></td></tr>
                                <tr><td><b>No Ijazah</b></td><td><?php echo $no_ijazah; ?></td></tr>
                                <tr><td><b>No Skhun</b></td><td><?php echo $no_skhun; ?></td></tr>
                                <tr><td><b>Status</b></td><td><?php echo $status; ?></td></tr>
                                <tr><td><b>Deskripsi</b></td><td><?php echo $deskripsi; ?></td></tr>
                                <tr><td></td><td><a href="<?php echo site_url('rekapitulasi'); ?>" class="btn btn-flat btn-default">Kembali</a></td></tr>
                            </table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>