Feature: Iniciar sesion

Scenario: Iniciar sesion para ver las acciones de la aplicacion

  Given voy a la vista HOME
  Then NO deberia ver la opcion Nuevo Evento y Nueva Propuesta
  And cliqueo en el link "Lista de Eventos"
  Then NO deberia ver la opcion Modificar

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  Then deberia ver la opcion Nuevo Evento y Nueva Propuesta
  And cliqueo en el link "Lista de Eventos"
  Then deberia ver la opcion Modificar