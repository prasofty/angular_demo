window.angularDemo = angular.module('angularDemo', [
	'ui.router'
	'ui.bootstrap'
	'builder'
	'builder.components'
	'validator.rules'
	'rails'
])
.config(($stateProvider, $urlRouterProvider, railsSerializerProvider, $httpProvider, RailsResourceProvider) ->

	$httpProvider.defaults.headers.post = {"X-CSRF-Token": $("meta[name=csrf-token]").attr("content")}

	RailsResourceProvider.httpConfig
		headers:
			"X-CSRF-Token": $("meta[name=csrf-token]").attr("content")

	$urlRouterProvider.otherwise '/'
	$stateProvider
	.state('root',
		url: ''
		abstract: true
		views:
			header:
				templateUrl: 'assets/partials/header.html'
			footer:
				templateUrl: 'assets/partials/footer.html')
	.state('root.home',
		url: '/'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/index.html'
				controller: 'indexController'
	)
	.state('root.forms',
		url: '/forms'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/index.html'
				controller: 'indexController'
	)
	.state('root.forms.new',
		url: '/new'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/new.html'
				controller: 'newController'
	)
	.state('root.forms.show',
		url: '/:id'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/show.html'
				controller: 'showController'
	)
	.state('root.forms.edit',
		url: '/edit'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/edit.html'
				controller: 'editController'
	)
	.state('root.forms.responses',
		url: '/:form_id/responses'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/index_responses.html'
				controller: 'indexResponcesController'
	)
	.state('root.forms.responses.new',
		url: '/new'
		views:
			'container@':
				templateUrl: 'assets/forms/templates/new_responses.html'
				controller: 'newResponcesController'
	)

	return
)
.run(($builder) ->
)
