angular.module 'app'
  .controller 'Users::IndexCtrl', [
    '$scope', 'UsersResource', '$resource'
    (sc, UsersResource, $resource)->

      sc.init = ()->
        sc.index = true
        # if sc.users
        # else
        #   sc.index = true


      sc.users = $resource('/users.json').query()
      console.log UsersResource.get({id: 2})

      sc.delete_user = (user)->
        UsersResource.delete(user)
        .remove(sc.users, UsersResource)

      # sc.save = ()->
      #   sc.user.$save()
      #   sc.users.push(sc.user)
      #   sc.user = new LoginResource()

      # sc.delete = (user)->
      #   LoginResource.delete(user);   

      # sc.teste = UsersResource.get ({ id: 2 }), ->
      #   console.log sc.teste

      # console.log UsersResource.query()

      # user.query( { id: 2 }, ->
      #   console.log sc.teste
      #   return
      # )

      # sc.backPage = ()->
      #     sc.edit = sc.show = false
      #     sc.index = true

      # sc.show_user = (id)->
      #   UsersService.show id, (data) ->
      #     sc.user = data
      #   sc.show = true
      #   sc.index = false

      # sc.edit_user = (id)->
      #   UsersService.show id, (data) ->
      #     sc.editUser = data
      #     sc.user = sc.editUser
      #   sc.index = false
      #   sc.edit = true

      # sc.update_user = (id)->
      #   # UsersService.update id, (data) ->
      #   #   console.log data

      # validationCamp = ()->
      #   if sc.user.name == ''
      #     alert 'Preencha o campo Name'
      #     return false
      #   if sc.user.login == ''
      #     alert 'Preencha o campo Login'
      #     return false
      #   if sc.user.password == ''
      #     alert 'Preencha o campo Password'
      #     return false
      #   if sc.user.passwordConfirm == ''
      #     alert 'Preencha o campo Confirm Password'
      #     return false
      #   return true

      # sc.confirmCadastro = ()->
      #   if validationCamp()
      #     if confirmLogin()
      #       alert 'Não foi possivel logar'
      #       return '/login' 
      #   alert 'Logado com sucesso'
      #   return '/home'

     
  ]