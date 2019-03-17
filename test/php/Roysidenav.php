<nav class="sidenav">
    <ul class="navbar-nav">
    <li class="nav-item <?= $phpname == "phpHome"?"active":""; ?>">
            <a class="nav-link" href="./Roy_datalist.php">資料列表</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="./Roy_data_insert_ajax.php">新增文章</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="./Roy_admin_data_insert_ajax.php">管理文章</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">活動驗票</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">活動評論</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">活動款項</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">參數設置</a>
        </li>
        <li class="nav-item <?= $phpname == "phpSetting"?"active":""; ?>">
            <a class="nav-link" href="#">管理者設置</a>
        </li>
    </ul>
</nav>