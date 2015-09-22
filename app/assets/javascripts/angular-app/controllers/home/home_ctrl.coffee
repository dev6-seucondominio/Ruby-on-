angular.module 'app'
  .controller 'Home::HomeCtrl', [
    '$scope', '$resource'
    (sc, $resource)->

      sc.user = $resource('/home.json').get (data)->
        sc.set_user data.name
  ]