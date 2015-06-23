Feature: Limitar la cantidad de personas que pueden asistir a un evento

Background:
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "Usuario" y su perfil "Administrador" en la pantalla

  Given un Evento creado

Scenario: Limitar cantidad de personas exitosa
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And fijo la cantidad de personas del evento en "20"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "Evento creado correctamente"

Scenario: Limitar cantidad de personas por debajo del minimo cupo por evento
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And fijo la cantidad de personas del evento en "-1"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Limitar cantidad de personas en nulo
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And fijo la cantidad de personas del evento en "0"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Limitar cantidad de personas por encima del maximo cupo por evento
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And fijo la cantidad de personas del evento en "30000000"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Limitar cantidad de personas con un valor no numérico
  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el link "Modificar"
  And fijo la cantidad de personas del evento en "qwe"
  And cliqueo en el boton "Grabar"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"
