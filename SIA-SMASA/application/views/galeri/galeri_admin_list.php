<section class="content">
<div class="container-fluid">
            <div class="block-header">
                <h2>GALERI</h2>
            </div>
			<?php if (isset($message)) {
    echo '<div class="alert bg-teal alert-dismissible" role="alert" id="flash-msg">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				'.$message.'
				</div>';
}?>

            <!-- Basic Alerts -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Berikut ini adalah daftar galeri alumni
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><?php echo anchor('galeri/create', 'Tambah data'); ?></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Gambar</th>
											<th>Nama File</th>
											<th>Deskripsi</th>
											<th>Ukuran File</th>
                                            <th>Tipe File</th>
											<th>Aksi</th>
										</tr>
                                    </thead>                                    
                                    <tbody>                                        
										<?php 
                                                $i=1;
                                            foreach ($_get_galeri as $row):?>
											    <td><img src=<?php echo base_url('assets/backend/images/'($row->nama_file));?> width='100' height='100'></td>
												<td><?php echo htmlspecialchars($row->nama_file, ENT_QUOTES, 'UTF-8'); ?></td>
                                                <td><?php echo htmlspecialchars($row->deskripsi, ENT_QUOTES, 'UTF-8'); ?></td>
                                                <td><?php echo htmlspecialchars($row->ukuran_file, ENT_QUOTES, 'UTF-8'); ?></td>
                                                <td><?php echo htmlspecialchars($row->tipe_file, ENT_QUOTES, 'UTF-8'); ?></td>
                                                <td>	
												<?php echo anchor('event/read/'.$row->nama_file, '<button type="button" class="btn btn-primary btn-circle waves-effect waves-circle waves-float">
													<i class="material-icons" data-toggle="tooltip" data-placement="top" title="Detail">list</i>
                                                </button>'); ?>
												<?php echo anchor('event/update/'.$row->id, '<button type="button" class="btn btn-warning btn-circle waves-effect waves-circle waves-float">
													<i class="material-icons" data-toggle="tooltip" data-placement="top" title="Edit">edit</i>
                                                </button>'); ?>
												<?php echo anchor('event/delete/'.$row->id, '<button type="button" class="btn btn-danger btn-circle waves-effect waves-circle waves-float">
													<i class="material-icons" data-toggle="tooltip" data-placement="top" title="Delete">delete</i>
                                                </button>'); ?>
                                                </td>
											</td>
										<?php endforeach; ?>
									</tbody>
									
								</table>								
							</div>
							
						</div>
					</div>
				</div>
            <!-- #END# Basic Alerts -->
		</div>
</section>