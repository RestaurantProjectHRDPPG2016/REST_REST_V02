<!-- <div class="container" style="margin-top:10px;" ng-controller="restCtrl">
		<div class="row" id="myrow">
 			<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 w3-card-4" id="each_menu" ng-repeat="r in rest"> 
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hlist" style="float:left;" id="menuborder">
						<div style="float:left;">
							<img class="img-responsive" src="resources/MOL/UPLOAD/Restaurant_Image/{{r.images[0].url}}" alt="Food">
						</div>
						<div id="menudt">
							<a href="/owner">		
								<div><span><b style="font-size: 15px;">{{r.name}}</b></span></div>
								<div><span>{{r.home}} St {{r.street}} {{r.commune.}} </span></div>
								<div><span>{{r.district}} {{r.city}}</span></div>
								<div ng-repeat="r in rest | limitTo:1"><span>Tel: {{r.tel[0].tel}}</span></div>
								<div><span><b style="color:red;">Opens at 10:00 AM</b></span></div>
								<div style="margin-top:10px;">
									<span class="btn btn-default">Like</span>
									<span class="btn btn-default" data-toggle="modal" data-target="#myModal">Visit Map</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div> -->
</div>