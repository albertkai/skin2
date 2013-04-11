@Skin = do (Backbone, Marionette)->

  App = new Marionette.Application

  App.on 'initialize:before', (options)->
    @currentUser = App.request 'set:current:user', options.currentUser

  App.addRegions
    header: 'header'
    main: '#main'
    footer: 'footer'

  App.addInitializer ->
    @module('FooterApp').start()
    @module('HeaderApp').start()

  App.on 'initialize:after', ()->
    console.log 'margarita'
    Backbone.history.start()
  App