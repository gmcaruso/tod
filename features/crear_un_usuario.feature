Feature: Crear un usuario

Scenario: Crear un usuario administrador
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Crear usuario"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton Log in
  Then se debe ver el usuario "Usuario" y su perfil "Administrador" en la pantalla