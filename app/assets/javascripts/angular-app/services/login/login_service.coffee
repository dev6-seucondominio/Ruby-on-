angular.module 'app'
  .factory 'LoginResource', [
    '$resource'
    ($resource)->
      return $resource(
        '/users/:_id', {}, { 
          query: {
            method: 'GET'
          }
        }
      )
      # log =
      #   ative: (user)->
      #     loginTeste = $resource '/users.json'
      #     teste = loginTeste.get { id: 2 }, ->
      #       console.log teste
      # log
  ]