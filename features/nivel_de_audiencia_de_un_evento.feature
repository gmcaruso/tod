Feature: Indicar el nivel de audiencia de un evento

Background:
  Given un Evento creado

Scenario: Setear nivel de audiencia

  Given voy a la vista "Home"
  And cliqueo en el boton "Lista de Eventos"
  And cambio el nivel de audiencia del evento a "Inicial"
  Then se debe ver el mensaje "Nivel del audiencia modificado con exito"