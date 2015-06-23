Feature: Crear un evento

Background:
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

Scenario: Evento nuevo

  Given voy a la vista HOME
  And cliqueo en el link Nuevo Evento
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

Scenario: Evento con cupo superando el limite maximo

  Given voy a la vista HOME
  And cliqueo en el link Nuevo Evento
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "30000"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Evento con cupo superando el limite minimo

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "-1"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"

Scenario: Evento con cupo nulo

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  Then veo el titulo "Nuevo Evento"
  And seteo el cupo en "0"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el link "Nuevo"
  Then se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y el valor del cupo máximo"