<?php
    $age = $_POST["age_name"];
    $ret = array(
        'ret' => $age,
    );
    echo json_encode($ret);