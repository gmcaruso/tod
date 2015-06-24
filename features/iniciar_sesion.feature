Feature: Iniciar sesion

Scenario: Iniciar sesion para ver las acciones de la aplicacion

  Given voy a la vista HOME
  Then NO deberia ver la opcion Nuevo Evento y Nueva Propuesta
  And cliqueo en el link "Lista de Eventos"
  Then NO deberia ver la opcion Modificar

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el email en "email@asd.com"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista HOME
  Then deberia ver la opcion Nuevo Evento y Nueva Propuesta
  And cliqueo en el link "Lista de Eventos"
  Then deberia ver la opcion Modificar
