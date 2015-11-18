angularDemo.factory 'Form', (railsResourceFactory) ->
	return railsResourceFactory
		url: '/api/v1.0/forms'
		name: 'form'
