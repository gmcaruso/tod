Feature: Eliminar eventos como usuario

Scenario: Eliminar evento creado por mi siendo usuario

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "40"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con cupo "40" y nivel de audiencia "Inicial"
  Then veo el boton "Eliminar"
  And cliqueo en el boton "Eliminar"
  Then se debe ver el mensaje "Evento eliminado correctamente"

Scenario: Eliminar evento creado por otro usuario

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"
  And cliqueo en el link "Cerrar sesión"

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Miguel"
  And seteo el password en "miguel.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Miguel"
  And seteo el password en "miguel.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con cupo "40" y nivel de audiencia "Inicial"
  Then NO veo el boton "Eliminar"

Scenario: Eliminar evento por un administrador

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario5"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"
  And cliqueo en el link "Cerrar sesión"

  Given voy a la vista CREATE_USER
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "adm.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"

  Given voy a la vista LOG IN
  And seteo el usuario en "UsuarioAdm"
  And seteo el password en "adm.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con cupo "40" y nivel de audiencia "Inicial"
  And cliqueo en el boton "Eliminar"
  Then se debe ver el mensaje "Evento eliminado correctamente"