<?php
require __DIR__ . '/PDO.php';
$page_name = '_adAnnDataInsert';
?>

<?php include __DIR__ . '/head.php';?>
<?php include __DIR__ . '/nav.php';?>
<?php include __DIR__ . '/AnnSideNav.php'?>

<style>
.form-group small {
    color: red !important;
}
</style>

<section class="dashboard">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <!-- <div class="alert alert-success" role="alert" style="display: none"></div> -->
                <div id="info_bar" class="alert alert-success" role="alert" style="display: none">
                </div>

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">廣告資料新增</h5>

                        <form name="form1" method="post" onsubmit="return checkForm();">
                            <input type="hidden" name="checkme" value="check123">
                            <input type="hidden" name="sn" value="<?=$row['sn']?>">

                            <div class="form-group">
                                <label for="ad_name">廣告名稱</label>
                                <input type="text" class="form-control" id="ad_name" name="ad_name" placeholder=""
                                    value="">
                                <small id="ad_nameHelp" class="form-text text-muted"></small>
                            </div>

                            <div class="form-group">
                                <label for="ad_pic">廣告圖檔</label>
                                <figure>
                                    <img id="myimg" src="" alt="" width="200px">
                                </figure>
                                <input type="file" class="form-control" id="ad_pic" name="ad_pic" placeholder=""
                                    value="">
                                <small id="ad_picHelp" class="form-text text-muted"></small>
                            </div>

                            <div class="form-group">
                                <label for="ad_link">廣告連結</label>
                                <input type="text" class="form-control" id="ad_link" name="ad_link" placeholder=""
                                    value="">
                                <small id="ad_linkHelp" class="form-text text-muted"></small>
                            </div>

                            <div class="form-group">
                                <label for="ad_link_count">點擊次數</label>
                                <input type="text" class="form-control" id="ad_link_count" name="ad_link_count"
                                    placeholder="" value="">
                                <small id="ad_link_countHelp" class="form-text text-muted"></small>
                            </div>

                            <div class="form-group">
                                <label for="ad_start_time">廣告放送開始時間</label>
                                <input type="text" class="form-control" id="ad_start_time" name="ad_start_time"
                                    placeholder="" value="">
                                <small id="ad_start_timeHelp" class="form-text text-muted"></small>
                            </div>

                            <div class="form-group">
                                <label for="ad_end_time">廣告放送結束時間</label>
                                <input type="text" class="form-control" id="ad_end_time" name="ad_end_time"
                                    placeholder="" value="">
                                <small id="ad_end_timelHelp" class="form-text text-muted"></small>
                            </div>
                            <button id="submit_btn" type="submit" class="btn btn-primary">Submit</button>
                        </form>

                    </div> <!-- card -->
                </div> <!-- col-lg-6 -->
            </div> <!-- row -->
        </div> <!-- container -->
</section>
<script>
// 上傳檔案
// const myimg = document.querySelector('#myimg');
// const ad_pic = document.querySelector('#ad_pic');

// ad_pic.addEventListener('change', event => {

//     //console.log(event.target);
//     const fd = new FormData();

//     fd.append('ad_pic', ad_pic.files[0]);

//     fetch('upload_ajax.php', {
//             method: 'POST',
//             body: fd
//         })
//         .then(response => response.json())
//         .then(obj => {
//             console.log(obj);
//             myimg.setAttribute('src', '.uploads' + obj.filename);
//         });
// })

const info_bar = document.querySelector('#info_bar');
const submit_btn = document.querySelector('#submit_btn');

const fields = [
    'ad_name',
    'ad_pic',
    'ad_link',
    'ad_link_count',
    'ad_start_time',
    'ad_end_time',
];

const fs = {};
for (let v of fields) {
    fs[v] = document.form1[v];
}
console.log(fs);
console.log('fs.ad_name:', fs.ad_name);

const checkForm = () => {
    let isPassed = true;
    info_bar.style.display = 'none';

    const fsv = {};
    for (let v of fields) {
        fsv[v] = fs[v].value;
    }
    console.log(fsv);

    // let email_pattern = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    // let mobile_pattern = /^09\d{2}\-?\d{3}\-?\d{3}$/;


    // for (let v of fields) {
    //     fs[v].style.borderColor = '#cccccc';
    //     document.querySelector('#' + v + 'Help').innerHTML = '';
    // }

    // if (fsv.client_name.length < 2) {
    //     fs.client_name.style.borderColor = 'red';
    //     document.querySelector('#client_nameHelp').innerHTML = "請輸入正確客戶公司!";
    //     isPassed = false;
    // }

    // if (!email_pattern.test(fsv.client_email)) {
    //     fs.client_email.style.borderColor = 'red';
    //     document.querySelector('#client_emailHelp').innerHTML = "請輸入正確連絡信箱!";
    //     isPassed = false;
    // }

    // if (!mobile_pattern.test(fsv.client_mobile)) {
    //     fs.client_mobile.style.borderColor = 'red';
    //     document.querySelector('#client_mobileHelp').innerHTML = "請輸入正確連絡電話!";
    //     isPassed = false;
    // }

    // return isChecked;

    if (isPassed) {
        let form = new FormData(document.form1);

        submit_btn.style.display = 'none';

        fetch('_adAnnDataInsert_api.php', {
                method: 'POST',
                body: form
            })
            .then(response => response.json())
            .then(obj => {
                console.log(obj);

                info_bar.style.display = 'block';

                if (obj.success) {
                    info_bar.className = 'alert alert-success';
                    info_bar.innerHTML = '資料新增成功';
                } else {
                    info_bar.className = 'alert alert-danger';
                    info_bar.innerHTML = obj.errorMsg;
                }

                submit_btn.style.display = 'block';
            });
    }
    return false;
};
</script>
<?php include __DIR__ . '/foot.php';?>