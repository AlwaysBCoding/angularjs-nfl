nflApp = angular.module("nflApp", ["ngResource", "customFilters"])

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

nflApp.controller "PlayersController", ["$scope", "Player", "Roster", ($scope, Player, Roster) ->
	$scope.heading = "Players of the NFL"
	$scope.players = Roster.query(abbr: $scope.abbr)

	$scope.fetchRoster = ->
		$scope.players = Roster.query(abbr: $scope.abbr)
]

nflApp.factory "Player", ["$resource", ($resource) ->
	return $resource "/players"
]

nflApp.factory "Roster", ["$resource", ($resource) ->
	return $resource "/teams/:abbr/roster"
]

# CUSTOM FILTERS
angular.module("customFilters", []).filter(
	"titleize", ->
		(input) ->
			input.charAt(0).toUpperCase() + input.slice(1);
	)

