<!-- detail -->
<div class="container" id="catdetail" style="border:solid 1px #dddddd; border-radius:5px; margin-top:10px;">
  <div ng-controller="restCtrl">
	<div ng-repeat="r in rest"> 
        <div class="col-md-7">
	        <section>  
			    <span ng-repeat="image in r.images | limit: 1">
			       <a class="example-image-link" href="{{image.url}}" 
				     data-lightbox="example-set">
				    <img class="example-image" src="{{image.url}}" alt="" /></a>
			  </span>
			  </section>
          </div>  
          <div class="col-md-5">
              <h2 style="text-align: center;">Hello Detail</h2>
              <div class="table-responsive">
              <table class="table" style="border-top: 0px;">
              <tr>
                <td>CompanyName: </td>
                <td>{{r.name}}</td>
              </tr>
              <tr>
                <td>Description: </td>
                <td>{{r.desc}}</td>
              </tr>
              <tr>
                <td>Address</td>
                <td>{{r.home}},{{r.street}}</td>
              </tr>
              <tr>
                <td>Contact</td>
                <td><span ng-repeat="t in r.tel">{{t.tel}}</span></td>
              </tr>
              </table>
              </div>
          </div>
         </div>
         </div>        
    </div> <!-- /container -->
    
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

<!-- 
detaile -->
