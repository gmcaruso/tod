Feature: Adding proposal

Background:
  Given voy a la vista CREATE_USER
  And seteo el usuario en "Author"
  And seteo el email en "email@asd.com"
  And seteo el password en "usuario.0"
  And seteo el rol en "Administrador"
  And cliqueo en el boton "Nuevo"
  Then se debe ver el mensaje "Author creado correctamente"

  Given voy a la vista LOG IN
  And seteo el usuario en "Author"
  And seteo el password en "usuario.0"
  And cliqueo en el boton "Log in"
  Then se debe ver el usuario "Author" y su perfil "Administrador" en la pantalla

  Given new proposal page

Scenario: Adding a proposal that complies
  Given proposal title "Proposal"
  And a description "This is a proposal"
  And author nick "Author"
  When submitting
  Then proposal is added

Scenario: Failing proposal submission when title is wrong
  Given proposal title "as"
  And a description "This is a proposal"
  And author nick "Author"
  Then it should raise an error

Scenario: Failing proposal submission when description is wrong
  Given proposal title "Proposal"
  And a description ""
  And author nick "Author"
  Then it should raise an error

Scenario: Failing proposal submission when author is wrong
  Given proposal title "Proposal"
  And a description "This is a proposal"
  And author nick " "
  Then it should raise an error

Scenario: Proposal have duplicated title
  Given proposal title "Proposal"
  And a description "This is a proposal"
  And author nick "Author"
  And submitting

  Given new proposal
  And proposal title "Proposal"
  And a description "This is a proposal"
  And author nick "Author"
  And submitting

  Then the second proposal should have title "Proposal - Author"
