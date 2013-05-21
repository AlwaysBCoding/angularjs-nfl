nflApp = angular.module("nflApp", ["ngResource"])

nflApp.controller "TeamsController", ["$scope", "Team", ($scope, Team) ->
	$scope.heading = "Teams of the NFL"
	$scope.teams = Team.query()
	$scope.newTeam =
		city: "atlanta"
		name: "falcons"
		abbr: "atl"
		conference: "nfc"
		division: "south"

	$scope.create = ->
		Team.save $scope.newTeam, ((resource) ->
			$scope.teams.push(resource)
			$scope.newTeam = {}
			), (response) ->
				console.error "Error #{response.status}"

]

nflApp.factory "Team", ["$resource", ($resource) ->
	return $resource "/teams"
]