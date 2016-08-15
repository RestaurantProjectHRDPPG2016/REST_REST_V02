<!-- detail -->
<div class="container" id="catdetail" style="border:solid 1px #dddddd; border-radius:5px; margin-top:10px;">
        <div class="col-md-7">
	        <section>
			    <div ng-controller="restCtrl">
			       <div ng-repeat="r in rest">
			        <span ng-repeat="image in r.images">
			        	<a class="example-image-link" href="{{image.url}}" 
				      	data-lightbox="example-set">
				      <img class="example-image" src="{{image.url}}" alt="" /></a>
					</span>
				     <!--  <a class="example-image-link" href="http://lokeshdhakar.com/projects/lightbox2/images/image-4.jpg" 
				      data-lightbox="example-set">
				      <img class="example-image" src="http://lokeshdhakar.com/projects/lightbox2/images/thumb-4.jpg" alt="" /></a>
				      <a class="example-image-link" href="http://lokeshdhakar.com/projects/lightbox2/images/image-5.jpg" 
				      data-lightbox="example-set">
				      <img class="example-image" src="http://lokeshdhakar.com/projects/lightbox2/images/thumb-5.jpg" alt="" /></a>
				      <a class="example-image-link" href="http://lokeshdhakar.com/projects/lightbox2/images/image-6.jpg" 
				      data-lightbox="example-set">
				      <img class="example-image" src="http://lokeshdhakar.com/projects/lightbox2/images/thumb-6.jpg" alt="" /></a> -->
				    </div>
				 </div>
			  </section>
          </div>
             
          <div class="col-md-5">
              <h2 style="text-align: center;">Hello Detail</h2>
              <div class="table-responsive">
              <table class="table" style="border-top: 0px;">
              <tr>
                <td>CompanyName: </td>
                <td>Pizza Company: </td>
              </tr>
              <tr>
                <td>Description: </td>
                <td>This is a group of 4th generation scholarships. The purpose of this group is to organize all of students to getting the information from the Director, Deputy Manager, Admin and Instructors. The Information will announce here... please kindly check it ..</td>
              </tr>
              <tr>
                <td>Address</td>
                <td> #12, St. 323, Sangkat Beoung Kat 2 Khan Toul Kork</td>
              </tr>
              <tr>
                <td>Contact</td>
                <td> 098 990 282 </br>  070 213 470</td>
              </tr>
              </table>
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
