<div class="container" id="img-cat">
	<div class="row">
	<div ng-repeat="c in myCat">
		<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
			<div class="default">
		 	<a href="/owner">
				<img class="img-responsive img-circle" src="resources/upload/playlist/img/{{c.img1}}">
				<span style="position:relative; top:-110px; left:55px; background-color:rgba(0,0,0,0.6);
	color:#ffffff;padding:5px; border-radius:3px;">{{c.name}}</span>
				</a>
			</div>  
	<div class="cover">
			<a href="/owner">
				<img class="img-responsive img-circle" src="resources/upload/playlist/img/{{c.img2}}">
				</a>
			</div>
		</div>
		</div>
	</div>
</div>

<div class="container">
<div class="widht:300px;margin-left:auto;margin-right:auto;">
<ul class="pagination">
    <li class="disabled"><a href="#">&laquo;</a></li>
    <li class="active"><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
     <li><a href="#">6</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
</div>
</div>
<!-- heloo -->