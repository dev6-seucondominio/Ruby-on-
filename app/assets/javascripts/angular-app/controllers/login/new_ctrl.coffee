angular.module 'app'
  .controller 'Login::NewCtrl', [
    '$scope', 'LoginResource'
    (sc, LoginResource)->

      sc.loginEnter = {}

      sc.confirmLogin = (user)->
        # LoginService
        # console.log LoginService.ative(user)
  ]