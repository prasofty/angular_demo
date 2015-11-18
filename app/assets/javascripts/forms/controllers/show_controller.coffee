angularDemo.controller 'showController', ($scope, Form, $stateParams) ->
	Form.get($stateParams.id).then (data) ->
		$scope.form = data

