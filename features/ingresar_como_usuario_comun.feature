Feature: Ingresar como usuario comun

Background:

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario2"
  And seteo el password en "usuario.2"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given un Evento creado

Scenario: Ingresar como usuario exitosa
  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario2"
  And seteo el password en "usuario.2"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "Usuario2" y su perfil "Usuario" en la pantalla

  
Scenario: Ingresar con password incorrecto
  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario2"
  And seteo el password en "password"
  And cliqueo en el boton "Log in"
  Then se debe ver el mensaje "Password incorrecto"

Scenario: Ingresar con usuario incorrecto
  Given voy a la vista LOG IN
  And seteo el usuario en "Batman"
  And seteo el password en "password"
  And cliqueo en el boton "Log in"
  Then se debe ver el mensaje "Usuario incorrecto"
