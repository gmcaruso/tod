Feature: Indicar el nivel de audiencia de un evento

Background:
  Given un Evento creado


Scenario: Setear nivel de audiencia

  Given voy a la vista "HOME"
  And cliqueo en el link "Lista de Eventos"
  And cliqueo en el boton "Modificar"
  And modifico el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Nivel del audiencia modificado con exito"
