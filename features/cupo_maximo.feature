Feature: como administrador quiero ver el cupo máximo general

Scenario: como administrador quiero ver el cupo máximo general

  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el email en "email@asd.com"
  And seteo el password en "adm.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "adm.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  Then se debe ver el campo "Configuración"


Scenario: como usuario quiero ver el cupo máximo general

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  Then No debo ver el campo "Configuración"
