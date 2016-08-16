
<div class="container" id="search">
<div class="col-md-2 col-sm-2 col-xs-3" style="float:left">
		<img class="img-responsive" style="padding:10px;" src="resources/upload/playlist/img/freshologo.png"/>
	</div>
<div class="col-md-10">
 <div class="input-group col-md-9 col-sm-9 col-xs-9" id="adv-search">
                <input type="text" class="form-control" placeholder="Search for Filings" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="searchbtn" aria-expanded="false"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu" id="mysearchbtn">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0" selected>Location</option>
                                        <option value="1">Phnom Penh</option>
                                        <option value="2">Kandal</option>
                                        <option value="3">Takeo</option>
                                        <option value="4">Prey Veng</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Filer</label>
                                       <select class="form-control">
                                        <option value="0" selected>Category</option>
                                        <option value="1">Pizza</option>
                                        <option value="2">Burger</option>
                                        <option value="3">Sandwitch</option>
                                        <option value="4">HotDog</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Search Restaurant Name</label>
                                    <input class="form-control glyphicon glyphicon-search" type="text" placeholder="location" />
                                   
                                  </div>
                                   <div class="form-group">
                                    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"> &nbspAuto search youra location here</span></button>
                                  </div>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </div>
                </div>
            </div>
  <div class="col-md-3" style="margin-top:-34px; float:right;">
    
 
    <div class="input-group add-on">
      <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
      <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-map-marker"></i></button>
      </div>
    </div>

  </div>
  <br>
            Type of Restaurant: &nbsp <a ng-repeat="r in myrestType" class="resttype">{{r.name}}</a>
		
  
</div>
</div>


