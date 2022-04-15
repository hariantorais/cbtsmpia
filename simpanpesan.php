<?php
require("config/config.default.php");
require("config/config.function.php");
require("config/functions.crud.php");

if(!isset($_SESSION['id_siswa'])){
    header('location:logout.php');
}else{
    $id_siswa = $_SESSION['id_siswa'];
    $pesan = $_POST['pesan'];
    $panggilan = $_POST['panggilan'];
    $facebook = $_POST['facebook'];
    $instagram = $_POST['instagram'];

    $data = array(
        'pesan' => $pesan,
        'panggilan' => $panggilan,
        'facebook' => $facebook,
        'instagram' => $instagram,
    );
    $where = array('id_siswa' => $id_siswa);

    update($koneksi, 'siswa', $data, $where);

    header('location:pesan');
    die();
}
