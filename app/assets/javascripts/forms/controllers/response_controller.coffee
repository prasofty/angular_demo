response_controllers = {}

response_controllers.newResponcesController = ($scope, $stateParams, $builder, Form) ->
	$scope.defaultValue = {};
	Form.get($stateParams.form_id).then (data) ->
		angular.forEach JSON.parse(data.fields), (field) ->
			$builder.addFormObject('default', field)
		$scope.form =
			title: data.title
			fields: data.fields



response_controllers.indexResponcesController = ->

window.angularDemo.controller response_controllers
