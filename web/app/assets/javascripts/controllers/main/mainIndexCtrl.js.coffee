@IndexCtrl = ($scope, $location, $http) ->
  loadPredictions = ->
    $http.get('./bill_predictions').success( (data) ->
      $scope.bill_predictions = data
      _.each($scope.bill_predictions, (item) ->
        item.color = if item.prediction > 50 then 'green' else 'red'
      )
      console.log('Successfully loaded bill predictions.')
    ).error( ->
      console.error('Failed to load bill prediction.')
    )
  loadPredictions()
