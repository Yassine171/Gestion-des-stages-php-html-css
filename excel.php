<?php
if(isset($_POST['export_excel'])){
    $output='<table class="table" bordered="1"';
    $output.=$_POST['file'];
    echo $output;
    header("Content-Type: application/xls");
    header('Content-Disposition: attachment; filename="Resulats.xls"');
}


