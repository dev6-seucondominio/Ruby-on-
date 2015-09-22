angular.module 'app'
  .factory 'LoginResource', [
    '$resource'
    ($resource)->
      return $resource('/login/:id:name')
  ]