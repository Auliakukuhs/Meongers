<?php

	$pesanan_id = $_GET["pesanan_id"];
	$bukti = "";

	if($pesanan_id){
		$query = mysqli_query($koneksi, "SELECT * FROM konfirmasi_pembayaran WHERE pesanan_id='$pesanan_id'");
		$row = mysqli_fetch_assoc($query);

		$gambar = $row['gambar'];
 }
 ?>

<table class="table-list">

	<form action="<?php echo BASE_URL."module/pesanan/action.php?pesanan_id=$pesanan_id"; ?>" method="POST">

		<div class="element-form">
			<label>Nomor Rekening</label>
			<span><input type="text" name="nomor_rekening" /></span>
		</div>

		<div class="element-form">
			<label>Nama Account</label>
			<span><input type="text" name="nama_account" /></span>
		</div>

		<div class="element-form">
			<label>Tanggal Transfer (format: yyyy-mm-dd)</label>
			<span><input type="text" name="tanggal_transfer" /></span>
		</div>

		<div class="element-form">
			<label>Bukti Transfer</label>
			<span>
				<input type="file" name="file" /> <?php echo $bukti; ?>
			</span>
		</div>

		<div class="element-form">
			<span><input type="submit" value="Konfirmasi" name="button" /></span>
		</div>

	</form>

</table>
