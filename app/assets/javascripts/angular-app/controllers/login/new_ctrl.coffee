angular.module 'app'
  .controller 'Login::NewCtrl', [
    '$scope', 'LoginResource', '$resource'
    (sc, LoginResource, $resource)->

      sc.confirmLogin = (user)->
        user = LoginResource.get { name: 'Diego Felipe' } , ()->
          console.log user
  ]