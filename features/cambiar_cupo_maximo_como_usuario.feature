Feature: Cambiar cupo maximo como usuario

Scenario: Cambiar cupo maximo

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el email en "email@asd.com"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario Usuario conectado con el rol Usuario

  Given un Evento creado

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then NO se debe ver el campo "Modificar Cupo"