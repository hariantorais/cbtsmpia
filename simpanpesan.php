<?php
require("config/config.default.php");
require("config/config.function.php");
require("config/functions.crud.php");

if(!isset($_SESSION['id_siswa'])){
    header('location:logout.php');
}else{
    $pesan = $_POST['pesan'];
    $id_siswa = $_POST['id_siswa'];

    $data = array('pesan' => $pesan);
    $where = array('id_siswa' => $id_siswa);

    update($koneksi, 'siswa', $data, $where);

    header('location:pesan');
    die();
}
