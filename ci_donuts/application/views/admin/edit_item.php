<div class="container-fluid">
    <h3><i class="fas fa-edit"></i>EDIT NAMA ITEM</h3>

    <?php foreach($item as $item) : ?>

        <form method="post" action="<?php echo base_url().'admin/data_menu/update' ?>">

            <div class="for-group">
                <label>Nama Item</label>
                <input type="text" name="nama_item" class="form-control" value="<?php echo$item->nama_item ?>">
            </div>

            <div class="for-group">
                <label>Keterangan</label>
                <input type="hidden" name="id_item" class="form-control" value="<?php echo$item->id_item ?>">
                <input type="text" name="keterangan" class="form-control" value="<?php echo$item->keterangan ?>">
            </div>

            <div class="for-group">
                <label>Menu</label>
                <input type="text" name="menu" class="form-control" value="<?php echo$item->menu ?>">
            </div>

            <div class="for-group">
                <label>Harga</label>
                <input type="text" name="harga" class="form-control" value="<?php echo$item->harga ?>">
            </div>
            
            <button type="submit" class="btn btn-primary btn-sm mt-3">Simpan</button>

        </form>

        <?php endforeach; ?>

</div>