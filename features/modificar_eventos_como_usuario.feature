Feature: Modificar eventos como usuario

Scenario: Modificar envento creado por mi siendo usuario
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
  Then se debe ver el usuario "Usuario" y su perfil "Usuario" en la pantalla

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el boton "Modificar"


Scenario: Modificar envento NO creado por mi siendo usuario
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Usuario"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "Usuario" y su perfil "Usuario" en la pantalla

  Given voy a la vista HOME
  And cliqueo en el link "Nuevo Evento"
  And seteo el cupo en "30"
  And seteo el nivel de audiencia en "Inicial"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Evento creado correctamente"
  

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con cupo "30" nivel de audiencia "Inicial" y cupo maximo "50"
  Then veo el boton "Modificar"

  Given voy a la vista CREATE_USER
  And seteo el usuario en "Pepe"
  And seteo el password en "pepe.0"
  And seteo el rol en "Usuario"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Usuario creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Pepe"
  And seteo el password en "pepe.0"
  And cliqueo en el boton "Log in"

  Given voy a la vista HOME
  And cliqueo en el link "Lista de Eventos"
  Then veo el evento con cupo "30" nivel de audiencia "Inicial" y cupo maximo "50"
  Then NO veo el boton "Modificar"
