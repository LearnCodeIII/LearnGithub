<?php
$pagename = "pageMain";

include __DIR__ . '/PDO.php';
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

?>
<?php include __DIR__ . './head.php'?>
<?php include __DIR__ . './nav.php'?>
<?php include __DIR__ . './Roysidenav.php'?>

<section class="dashboard">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 d-flex justify-content-center">
                <nav class="d-flex">
                    <!-- TODO: 第一頁-->       
                    <ul class="allpages pagination pagination-sm">
                    </ul>
                    <!-- TODO:最後一頁 -->        
                </nav>
            </div>
        </div>
        <div class="row">
            <table class="table table-bordered table-dark text-center">
                <thead>
                    <tr>
                        <th scope="col">文章編號</th>
                        <th scope="col">文章標題</th>
                        <th scope="col">影評</th>
                        <th scope="col">發布日期</th>
                        <th scope="col">觀看日期</th>
                        <th scope="col">觀看戲院</th>
                        <th scope="col">電影評分</th>
                        <th scope="col">我的最愛</th>
                        <th scope="col"><i class="far fa-edit"></i></th>
                        <th scope="col"><i class="far fa-trash-alt"></i></th>
                        <a href=""></a>
                    </tr>
                </thead>
                <tbody id="forum_databody">

                </tbody>
            </table>
        </div>
    </div>
</section>

<script>
let page = 1;
let ori_data;
const ul_pagi = document.querySelector('.allpages');
const forum_databody = document.querySelector("#forum_databody");


// 資料TABLE生成
const tr_str = ` <tr>
                    <td><%=sid%></td>
                    <td><%=headline%></td>
                    <td><%=review%></td>
                    <td><%=i_date%></td>
                    <td><%=w_date%></td>
                    <td><%=w_cinema%></td>
                    <td><%=film_rate%></td>
                    <td><%=fav%></td>
                    <td><a href=""><i class="far fa-edit"></i></a></td>
                    <td><a href=""><i class="far fa-trash-alt"></i></a></td>
                </tr>`
const tr_func = _.template(tr_str);

//分頁按鈕生成
const pagi_str = `<li class="page-item <%= active %>">
                    <a class="page-link" href="#<%= page %>"><%= page %></a>
                  </li>`;
const pagi_func = _.template(pagi_str);

// 文章匯入
const myHashChange = () => {
    let h = location.hash.slice(1);
    page = parseInt(h);
    if (isNaN(page)) {
        page = 1;
    }
    fetch("Roy_datalist_api.php?page=" + page)
        .then(response => response.json())
        .then(json => {
            ori_data = json;
            console.log(ori_data);

            // 文章內容匯入
            let str = '';
            for (let v of ori_data.data) {
                str += tr_func(v);
            }
            forum_databody.innerHTML = str;

            // 資料內容匯入
            str = '';
            for (let i = 1; i <= ori_data.totalPages; i++) {
                let active = ori_data.page === i ? 'active' : '';

                str += pagi_func({
                    active: active,
                    page: i
                });
            }
            ul_pagi.innerHTML = str;
        })
}
window.addEventListener('hashchange', myHashChange);
myHashChange();
</script>
<?php include __DIR__ . './foot.php'?>