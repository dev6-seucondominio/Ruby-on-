angular.module 'app'
  .controller 'Users::IndexCtrl', [
    '$scope', 'UsersResource', '$location', '$resource'
    (sc, UsersResource, $location, $resource)->

      sc.init = ()->
        if true
          sc.index = true
          sc.users = $resource('/users.json').query (data)->
            sc.users = data
        else
          sc.cadastro = true

      sc.new_user = (userIn)->
        user = new UsersResource
        user.name = userIn.name
        user.login = userIn.login
        user.password = userIn.password
        if user.$save()
          $location.path('/home')
        else
          alert 'erro'
  ]