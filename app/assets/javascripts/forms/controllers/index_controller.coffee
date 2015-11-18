angularDemo.controller 'indexController', ($scope, Form) ->
	Form.query().then (results) ->
		$scope.forms = results
		console.log($scope.forms)
