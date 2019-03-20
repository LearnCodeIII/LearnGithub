<?php
$upload_dir = __DIR__. '/uploads/';

header('Content-Type: application/json');

$result = [
    'success' => false,
    'filename' => '',
    'info' => '',
];

if(empty($_FILES['ad_pic'])){
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    exit;
}

$filename = sha1($_FILES['ad_pic']['name']. uniqid());

switch($_FILES['ad_pic']['type']){
    case 'image/jpeg':
        $filename .= '.jpg';
        break;
    case 'image/png':
        $filename .= '.png';
        break;
    default:
        $result['info'] = '格式不符';
        echo json_encode($result, JSON_UNESCAPED_UNICODE);
        exit;
}
$result['filename'] = $filename;
$upload_file = $upload_dir. $filename;

if(move_uploaded_file($_FILES['ad_pic']['tmp_name'], $upload_file)){
    $result['success'] = true;
} else {
    $result['info'] = '暫存檔無法搬移';
}
echo json_encode($result, JSON_UNESCAPED_UNICODE);