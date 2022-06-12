<div class="container-fluid">
    <div class="card">
    <h5 class="card-header">Detail Produk</h5>
    <div class="card-body">

        <?php foreach($item as $item): ?>
        <div class="row">
            <div class="col-md-4"> 
                <img src="<?php echo base_url().'/uploads/'.$item->gambar ?>" 
                class="card-img-top">          
            </div>
            <div class="col-md-8"> 
                <table class="table">
                    <tr>
                        <td>Nama Produk</td>
                        <td><strong><?php echo $item->nama_item ?></strong></td>
                    </tr>

                    <tr>
                        <td>keterangan</td>
                        <td><strong><?php echo $item->keterangan ?></strong></td>
                    </tr>

                    <tr>
                        <td>Menu</td>
                        <td><strong><?php echo $item->menu ?></strong></td>
                    </tr>

                    <tr>
                        <td>Harga</td>
                        <td><strong><div class="btn btn-sm btn-success">Rp.<?php echo number_format($item->harga,0,',','.')?> </div></strong></td>
                    </tr>
                </table>

                <?php echo anchor('dashboard/tambah_ke_keranjang/'.$item->id_item,'<div class="btn btn-sm btn-primary">Add To Cart</div>') ?>

                <?php echo anchor('dashboard/index/'.$item->id_item,'<div class="btn btn-sm btn-primary">Kembali</div>') ?>
            </div>

        </div>
        <?php endforeach; ?>
    </div>
    </div>

</div>