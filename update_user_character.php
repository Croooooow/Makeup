<?php
    $face = $_POST["face"];
    $ret = array(
        'ret' => $face,
    );
    echo json_encode($ret);