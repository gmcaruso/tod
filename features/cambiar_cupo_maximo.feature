Feature: Cambiar cupo maximo como administrador

Background:
  Given un Evento creado

Scenario: Cambiar cupo maximo
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And seteo el cupo maximo en "20"
  And cliqueo en el boton "Nuevo"
  Then se debe ver en la lista de eventos el cupo maximo cambiado en "20"

Scenario: Cambiar cupo maximo con valor cero
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And seteo el cupo maximo en "0"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El cupo maximo debe ser un valor entero positivo"

Scenario: Cambiar cupo maximo con valor negativo
  Given voy a la vista "HOME"
  And cliqueo en el boton "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And seteo el cupo maximo en "-1"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "El cupo maximo debe ser un valor entero positivo"