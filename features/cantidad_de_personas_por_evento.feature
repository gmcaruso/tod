Feature: Limitar la cantidad de personas que pueden asistir a un evento

Background:
  Given un Evento creado

Scenario: Limitar cantidad de personas exitosa
  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And fijo la cantidad de personas del evento en "20"
  And aprieto el boton "Nuevo"
  Then se debe ver el mensaje "Evento enviado correctamente"

Scenario: Limitar cantidad de personas por debajo del minimo cupo por evento
  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And fijo la cantidad de personas del evento "-1"
  And aprieto el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Limitar cantidad de personas en nulo
  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And fijo la cantidad de personas del evento "0"
  And aprieto el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Limitar cantidad de personas por encima del maximo cupo por evento
  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And fijo la cantidad de personas del evento "30000000"
  And aprieto el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Limitar cantidad de personas con un valor no numérico
  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And fijo la cantidad de personas del evento "qwe"
  And aprieto el boton "Nuevo"
  Then se debe ver el mensaje "Cupo debe ser un valor numérico entero"
