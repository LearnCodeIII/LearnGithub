<?php

$upload_dir = __DIR__. '/uploads/';

// if(empty($_FILES['ad_pic'])){
//     exit;
// }

// $upload_file = $upload_dir. $_FILES['ad_pic']['name'];


// if(move_uploaded_file($_FILES['ad_pic']['tmp_name'], $upload_file)){ 

//     echo "{$_FILES['ad_pic']['name']}<br>";
//     echo "{$_FILES['ad_pic']['type']}<br>";
//     echo "{$_FILES['ad_pic']['size']}<br>";
    
// } else {
//     echo 'no';
// }

// 如果錯次碼為0
if ($_FILES['ad_pic']['error'] == 0) {

    // 如果暫存檔名稱和目的路徑及檔名和上傳檔案名稱
    if (move_uploaded_file($_FILES['ad_pic']['tmp_name'], "./".$_FILES['ad_pic']['name'])) {

        echo "上傳成功!<br />";
        echo "檔案名稱: ".$_FILES[ad_pic]['name']."<br />";
        echo "檔案類型: ".$_FILES[ad_pic]['type']."<br />";
        echo "檔案大小: ".$_FILES[ad_pic]['size']."<br />";

    } else {
        echo "上傳失敗! ";
    }
}

// move_uploaded_file(暫存檔名稱, 目的路徑及檔名)
// $_FILES[欄位名稱]['name'] - 取得上傳檔案名稱
// $_FILES[欄位名稱]['tmp_name'] - 取得上傳檔案暫存檔名稱
// $_FILES[欄位名稱]['size'] - 取得上傳檔案大小
// $_FILES[欄位名稱]['error'] - 錯誤碼








