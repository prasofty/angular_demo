angularDemo.controller 'newController', (($scope, $builder, $validator, Form) ->
	$scope.form =
		fields: $builder.forms['default']


	$scope.save = ->
		$validator.validate($scope, 'form')
		.success ->
			new Form({title: $scope.form.title, fields: angular.toJson($scope.form.fields)}).create()
			console.log 'success'
		.error ->
			console.log 'error'
)
