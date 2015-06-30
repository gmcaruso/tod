Feature: Cambiar cupo maximo como administrador

Background:
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

  Given un Evento creado

Scenario: Cambiar cupo maximo
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Configuración"
  And seteo el cupo maximo en "20"
  And cliqueo en el boton "Modificar"
  Then se debe ver en la lista de eventos el cupo maximo cambiado en "20"

Scenario: Cambiar cupo maximo con valor cero
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Configuración"
  And seteo el cupo maximo en "0"
  And cliqueo en el boton "Modificar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Cambiar cupo maximo con valor negativo
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Configuración"
  And seteo el cupo maximo en "-1"
  And cliqueo en el boton "Modificar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

