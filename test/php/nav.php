<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="./RoyPageMain.php">.Moiveee</a>
	<div class="container-fulid">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="#">會員系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="#">戲院系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="#">影片系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="RuthPageMain.php">文章系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageHome"?"active":""; ?>">
					<a class="nav-link" href="./RoyPageMain.php">活動系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="#">論壇系統</a>
				</li>
				<li class="nav-item <?= $pagename == "pageData"?"active":""; ?>">
					<a class="nav-link" href="#">廣告系統</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
