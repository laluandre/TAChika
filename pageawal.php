<?php
    require 'functions.php';

    if(isset($_POST['submit'])){
        $nama = $_POST['nama'];
        $gender = $_POST['gender'];
        $usia = $_POST['usia'];
        mysqli_query($conn, "INSERT INTO user VALUES('','$nama','$gender','$usia','1','1')");
        header('Location: index.php'); 
    }


?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>halaman awal</title>
</head>
<body>

<form method = "POST" action="">
    <label for="nama">nama:</label>
    <input type="text" id="nama" name="nama"><br>

    <label for="gender">gender</label>
    <select id="gender" name ="gender">
        <option value="Laki-Laki">Laki Laki</option>
        <option value="Perempuan">Perempuan</option>
    </select> <br>

    <label for= "usia">usia</label>
    <input type="number" id="usia" name="usia"> <br>

    <button type="submit" name="submit">next</button>
</form>

</body>
</html>