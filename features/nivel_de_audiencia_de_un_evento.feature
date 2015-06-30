Feature: Indicar el nivel de audiencia de un evento

Background:
  Given un Evento creado
  
  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "UsuarioAdm" y su perfil "Administrador" en la pantalla

Scenario: Setear nivel de audiencia

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And modifico el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "Evento creado correctamente"


