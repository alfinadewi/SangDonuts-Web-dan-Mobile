<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_item"><i class="fas fa-plus fa-sm"></i>Tambah Item</button>

    <table class="table table-bordered">
        <tr>
            <th>NO</th>
            <th>Nama Item</th>
            <th>Keterangan</th>
            <th>Menu</th>
            <th>Harga</th>
            <th colspan="3">Aksi</th>
        </tr>

        <?php
        $no=1;
        foreach($item as $item) : ?>

        <tr>
            <td><?php echo $no++ ?></td>
            <td><?php echo $item->nama_item ?></td>
            <td><?php echo $item->keterangan ?></td>
            <td><?php echo $item->menu ?></td>
            <td><?php echo $item->harga ?></td>
            <td><div class="btn btn-success btn-sm"><i class="fas fa-search-plus"></i></div></td>
            <td><?php echo anchor('admin/data_menu/edit/' .$item->id_item, '<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>') ?></td>
            <td><?php echo anchor('admin/data_menu/hapus/' .$item->id_item, '<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
        </tr>

        <?php endforeach; ?>

    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="tambah_item" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Form Input Menu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <!-- <form action="<?php echo base_url(). 'admin/data_menu/tambah_aksi'?>"
        method="post" enctype="multipart/form-data" > -->
        
        <?php echo form_open_multipart('admin/data_menu/tambah_aksi'); ?>

            <div class="form-group">
                <label>Nama Item</label>
                <input type="text" name="nama_item" class="form-control">
            </div>

            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" name="keterangan" class="form-control">
            </div>

            <div class="form-group">
                <label>Menu</label>
                <select class="form-control" name="menu">
                  <option>Makanan</option>
                  <option>Minuman</option>
                </select>
        </div>

            <div class="form-group">
                <label>Harga</label>
                <input type="text" name="harga" class="form-control">
            </div>

            <div class="form-group">
                <label>Gambar Item</label>
                <input type="file" name="gambar" class="form-control">
            </div>

        

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>

      <!-- </form> -->

      <?php echo form_close(); ?>

    </div>
  </div>
</div>