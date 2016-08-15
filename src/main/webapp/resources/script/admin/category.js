
var app = angular.module('myApp', []);

app.controller('adminCtrl', function($scope, $http, $window, $rootScope){
	
	$scope.$watch('category', function(newValue){
		$rootScope.subCategoryId = newValue;
	});

	$scope.selectCategory = function(){
		$http({
			url : 'http://localhost:8888/maincategory/',
			method : 'GET'
		}).then(function(objcat){
			$scope.myCat = objcat.data.DATA;
		}, function(response){
			$scope.myCat = objcat.data;
		});
	}
	$scope.selectCategory();
	
	$scope.deleteCategory = function(myid){
		$http({
			url : 'http://localhost:8888/maincategory/'+myid,
			method : 'DELETE'
		}).then(function(objcat){
			alert("Delete Success ");
			$scope.selectCategory();
		},function(response){
			alert('failed');
		})
	}
	
	$scope.changeMode =function(mode){
		if(mode==0){
			$scope.name = "";
			$scope.img1 = "";
			$scope.img2 = "";
			$scope.t_id = "";
		$("#addCat").show();
		$("#updateCat").hide();
		}
	};
	$scope.addCategory = function(){
		alert("Weloceot add");
		alert($scope.t_id);
		var filename1 = $('#img1').val();
		var filename2 = $('#img2').val();
	    if (filename1.substring(3,11) == 'fakepath' )    { 
	            filename1 = filename1.substring(12, filename1.length); 
	        }
	        if (filename2.substring(3,11) == 'fakepath' )    { 
	            filename2 = filename2.substring(12, filename2.length); 
	        }
		$http({
			url:'http://localhost:8888/maincategory/',
			method:'POST',
			data:{
				'name': $scope.name,
				't_id': $scope.rest_type,
				'img1': filename1,
				'img2': filename2
			}
		}).then(function(response){
			
			$scope.selectCategory();
	}, function(response){
		alert('failed');
	});
	}
	
	$scope.editCategory = function(newData) {
		$("#addCat").hide();
		$("#updateCat").show();
		console.log(newData);
		$scope.id = newData.c.id;
		$scope.img1= newData.c.img1;
		$scope.img2= newData.c.img2;
		$scope.name=newData.c.name;
		$scope.t_id=newData.c.t_id;
	}
	$scope.updateCategory = function(){
		$http({
		url:'http://localhost:8888/maincategory/',
		method:'PUT',
		data:{
			'id' : $scope.id,
			'name' : $scope.name,
			'img1' : $scope.img1,
			'img2' : $scope.img2,
			't_id' : $scope.t_id
		}
		}).then(function(response){
			$scope.selectCategory();
	}, function(response){
		alert("fail maincateory put");
	});
	}


	/*Start Restaurant Type*/

		// GetALL Type of restaurant
		$scope.getRestType = function(){
			$http({
				url: 'http://localhost:8888/resttype',
				method:'GET'
			}).then(function(response){
				$scope.myrestType=response.data.DATA;
				
			}, function(response){
				alert('failed');
			});
		}
		$scope.getRestType();
		
		$scope.addRestType = function(){
			$http({
				url:'http://localhost:8888/resttype/',
				method:'POST',
				data:{
					'name': $scope.name
				}
			}).then(function(response){
				$scope.getRestType();
		}, function(response){
			alert('failed');
		});
		}
		
		$scope.deleteRestType = function(id){
			$http({
				url : 'http://localhost:8888/resttype/'+id,
				method : 'DELETE'
			}).then(function(objcat){
				$scope.getRestType();
			},function(response){
				alert('failed');
			})
		}
		
		$scope.changeRestType =function(mymode){
		if(mymode==1){
			$scope.name = "";
			$("#add").show();
			$("#update").hide();
			}
		};
		
		$scope.editRestType = function(mynew){
			$("#add").hide();
			$("#update").show();
			$scope.id = mynew.rt.id;
			$scope.name= mynew.rt.name;
		}
		
		$scope.updateRestType = function(){
			$http({
			url:'http://localhost:8888/resttype/',
			method:'PUT',
			data:{
				'id' : $scope.id,
				'name' : $scope.name
			}
			}).then(function(response){
				$scope.getRestType();
		}, function(response){
			alert("fail");
		});
		}


	/*End Restaurant Type*/
	
	

	/*
	$scope.deleteCategory = function(myid){
		$http({
			url : 'http://localhost:8888/maincategory/'+myid,
			method : 'DELETE'
		}).then(function(objcat){
			alert("Delete Success ");
			$scope.selectCategory();
		},function(response){
			alert('failed delete main categoyr');
		})
	}
	$scope.addCategory = function(){
		var filename1 = $('#img1').val();
		var filename2 = $('#img2').val();
	    if (filename1.substring(3,11) == 'fakepath' )    { 
	            filename1 = filename1.substring(12, filename1.length); 
	        }
	        if (filename2.substring(3,11) == 'fakepath' )    { 
	            filename2 = filename2.substring(12, filename2.length); 
	        }
		$http({
			url:'http://localhost:8888/maincategory/',
			method:'POST',
			data:{
				'name': $scope.name,
				't_id': $scope.t_id,
				'img1': filename1,
				'img2': filename2
			}
		}).then(function(response){
			$scope.selectCategory();
	}, function(response){
		alert('failed to upload main category');
	});
	}
*/
		

		// GetProvince
		$scope.getProvince = function(){
			$http({
				url: 'http://localhost:8888/cities',
				method:'GET'
			}).then(function(response){
				$scope.myProvince=response.data.DATA;
			}, function(response){
				alert('failed To call all data');
			});
		}
		$scope.getProvince();
		
		// GetDistrict
		$scope.getDistrict = function(cityId){
			//$scope.city = $scope.province;
			$http({
				url: 'http://localhost:8888/cities/'+cityId+'/districts',
				method:'GET'
			}).then(function(response){
				
				$scope.myDistrict=response.data.DATA;
			}, function(response){
				alert('failed To call all data');
			});
		}
	
		// Getcommune
		$scope.getCommune = function(districtId){
			$http({
				url: 'http://localhost:8888/districts/'+districtId+'/commnunes',
				method:'GET'
			}).then(function(response){
				$scope.myCommune=response.data.DATA;
			}, function(response){
				alert('failed To call all data');
			});
		}

		
		
		
});

/*Start Resturant Controller*/

app.controller('restCtrl', function ($scope, $http, $window, $rootScope){

	// GetALL
	$scope.getRest = function(){
		$http({
			url: 'http://localhost:8888/restaurant',
			method:'GET'
		}).then(function(response){
			$scope.rest=response.data.DATA;
		}, function(response){
			alert('failed To call all data');
		});
	}
	$scope.getRest();
	
	$scope.addRestaurant = function(){
		alert("HEllo");
		var frmData = new FormData();
		var tel = $('input[name=tel]');

		$.each(tel, function(key, e){
			frmData.append('telephones', $(e).val());
		});
		
		
		var restaurant_files = angular.element('#img')[0].files;
		for(var i=0; i<restaurant_files.length; i++){
			frmData.append("image", restaurant_files[i]);
		}
		
		var menu_files = angular.element('#menus')[0].files;
		
		for(var i=0; i<menu_files.length; i++){
			frmData.append("menus", menu_files[i]);
		}
		
		frmData.append('name', $scope.name);
		frmData.append('type', $rootScope.subCategoryId);
		frmData.append('description', $scope.desc);
		frmData.append('delivery', $scope.delivery);
		frmData.append('home', $scope.home);
		frmData.append('street', $scope.street);
		frmData.append('province',$scope.province.id);
		frmData.append('district', $scope.district.id);
		frmData.append('commune', $scope.commune.id);
		
		$http({
			url:'http://localhost:8888/restaurant',
			method: 'POST',
			data: frmData,
			transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
		}).then(function(response){
			console.log(response.data);
			$scope.getRest();
		}, function(error){
			console.log(error.data);
			alert('failed to upload data! Please Try again Youra !!!!!');
			$scope.getRest();
		});
}		
	
	
});

/*ENd Restuarant Controller*/

/*Start Restaurant Type

app.controller('restType', function ($scope, $http, $window){

	// GetALL
	$scope.getRestType = function(){
		$http({
			url: 'http://localhost:8888/resttype',
			method:'GET'
		}).then(function(response){
			$scope.myrestType=response.data.DATA;
			
		}, function(response){
			alert('failed rest type');
		});
	}
	$scope.getRestType();
	
	$scope.addRestType = function(){
		alert("HEllo Test Type");
		$http({
			url:'http://localhost:8888/resttype/',
			method:'POST',
			data:{
				'name': $scope.name
			}
		}).then(function(response){
			$scope.getRestType();
	}, function(response){
		alert('failed post resty type');
	});
	}
	
	$scope.deleteRestType = function(id){
		$http({
			url : 'http://localhost:8888/resttype/'+id,
			method : 'DELETE'
		}).then(function(objcat){
			$scope.getRestType();
		},function(response){
			alert('failed delewer');
		})
	}
	
	$scope.changeRestType =function(mode){
		if(mode==1){
			$scope.name = "";
		$("#add").show();
		$("#update").hide();
		}
	};
	
	$scope.editRestType = function(t) {
		$("#add").hide();
		$("#update").show();
		$scope.id = t.data;
		$scope.name= t.data;
	}
	
	$scope.updateRestType = function(){
		$http({
		url:'http://localhost:8888/resttype/',
		method:'PUT',
		data:{
			'id' : $scope.id,
			'name' : $scope.name
		}
		}).then(function(response){
			$scope.getRestType();
	}, function(response){
		alert("fail put rest type");
	});
	}
	alert("HEllo");
});*/