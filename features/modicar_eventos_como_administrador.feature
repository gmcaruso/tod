Feature: Modificar evento como administrador

Scenario: Modificar evento creado por mi siendo administrador

  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el email en "email@asd.com"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "UsuarioAdm" y su perfil "Administrador" en la pantalla

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el boton "Modificar"


Scenario: Modificar evento creado por otro usuario siendo administrador

  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el email en "email@asd.com"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "UsuarioAdm" y su perfil "Administrador" en la pantalla

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Jorge"
  And seteo el email en "email@asd.com"
  And seteo el password en "jorge.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Jorge"
  And seteo el password en "jorge.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el boton "Modificar"
