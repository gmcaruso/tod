Feature: ver el nombre de autor en los eventos


Scenario: evento creado por mi siendo un usuario común

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Arturo"
  And seteo el password en "Arturo.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Arturo"
  And seteo el password en "Arturo.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "40"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con autor "Arturo" cupo "40" nivel de audiencia "Inicial"