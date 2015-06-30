Feature: Ingresar como administrador

Background:
  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given un Evento creado

Scenario: Ingresar como administrador exitosa
  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "UsuarioAdm" y su perfil "Administrador" en la pantalla

  Given voy a la vista HOME
  Then se debe ver el campo "Configuración"

Scenario: Ingresar con password incorrecto
  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "password"
  And cliqueo en el boton "Log in"
  Then se debe ver el mensaje "Password incorrecto"

Scenario: Ingresar con usuario incorrecto
  Given voy a la vista LOG IN
  And seteo el usuario en "Batman"
  And seteo el password en "password"
  And cliqueo en el boton "Log in"
  Then se debe ver el mensaje "Usuario incorrecto"


