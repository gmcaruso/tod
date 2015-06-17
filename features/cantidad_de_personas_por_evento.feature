Feature: Limitar la cantidad de personas que pueden asistir a un evento

Background:
  Given un Evento creado


Scenario: Limitar cantidad de personas exitosa
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And fijo la cantidad de personas del evento en "20"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"


Scenario: Limitar cantidad de personas por debajo del minimo cupo por evento
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And fijo la cantidad de personas del evento en "-1"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"


Scenario: Limitar cantidad de personas en nulo
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And fijo la cantidad de personas del evento en "0"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"


Scenario: Limitar cantidad de personas por encima del maximo cupo por evento
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And fijo la cantidad de personas del evento en "30000000"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"


Scenario: Limitar cantidad de personas con un valor no numérico
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And fijo la cantidad de personas del evento en "qwe"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"
