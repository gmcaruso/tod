Feature: Cambiar cupo maximo como usuario

Background:
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Crear usuario"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton Log in
  Then se debe ver el usuario "Usuario" y su perfil "Usuario" en la pantalla

  Given un Evento creado

Scenario: Cambiar cupo maximo
  Given voy a la vista HOME
  And cliqueo en el boton "Lista de Eventos"
  Then NO se debe ver el campo "Modificar Cupo"