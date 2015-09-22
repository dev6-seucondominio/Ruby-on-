angular.module 'app'
  .factory 'UsersResource', [
    '$resource'
    ($resource)->
      return $resource('/users/:id', {}, {
          get: { cache: true, method: 'GET' }
        }
      )

  ]
# serv =
#   index: (success) ->
#     $http.get("/users.json")
#     .success (data)->
#       success(data)
#   show: (id, success) ->
#     $http.get("/users/#{id}.json")
#     .success (data)->
#       success(data)
#   update: (id, success) ->
#     $http.patch("/users/#{id}")
#     .success (data)->
#       success(data)
#   destroy: (user, success) ->
#     $http.delete("/users/#{user.id}")
#     .success (data)->
#       success(data)
# serv