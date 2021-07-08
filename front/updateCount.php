<?php
if (!isset($_GET['id']) ) {
    echo "Update failed, please try again! <a href='./order.php'>back</a>";
    exit;
}

include "db.php";
$sql = "update ice_order set count = ".$_GET['c']." where id=".$_GET['id'];
mysqli_query($conn, $sql);

header("Location: ./cavallo.php?msg=success");
