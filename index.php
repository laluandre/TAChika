<?php

require 'functions.php';

$query = mysqli_query($conn, "SELECT * FROM pertanyaan");

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEMANGAT CHIKA</title>
</head>

<body>

<?php $soal = 1;?>
<?php while($pertanyaan = mysqli_fetch_assoc($query)):?>
<form method="POST" action="hasil.php">
    <p><?=$soal . ". ". $pertanyaan['soal']; ?></p>
    <input type="radio" id="yaG1" name="<?= $soal; ?>" value="1">
    <label for="yaG1">YA</label>
    <input type="radio" id="tidakG1" name="<?= $soal; ?>" value="0">
    <label for="tidakG1">TIDAK</label>
    <?php if($soal == 18){
        echo "<br><button type=submit name=hasil>Submit</button>";
    } ?>
</form>

<?php $soal++; ?>
<?php endwhile; ?>
</body>
</html>

