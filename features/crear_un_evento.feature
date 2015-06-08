Feature: Crear un evento

Scenario: Evento nuevo

  Given voy a la vista "HOME"
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

Scenario: Evento con cupo superando el limite maximo

  Given voy a la vista "HOME"
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "30000"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Evento con cupo superando el limite minimo

  Given voy a la vista "HOME"
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "-1"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Evento con cupo nulo

  Given voy a la vista "HOME"
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "0"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"

Scenario: Evento con nivel de audiencia distinto a los recomendados

  Given voy a la vista "HOME"
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "20"
  And seteo el nivel de audiencia en "Pepepompin"
  And cliqueo en el link "Nuevo"