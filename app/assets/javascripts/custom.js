function RestaurantListCtrl($scope, $http) {
  $http.get('/restaurants.json').success(function(data) {
    $scope.restaurants = data;
  });

  $scope.filterProp = '';
}

RestaurantListCtrl.$inject = ['$scope', '$http'];