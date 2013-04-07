@Skin = do (Backbone, Marionette)->

  App = new Marionette.Application

  App.addRegions
    header: 'header'
    main: '#main'
    footer: 'footer'

  App.addInitializer ->
    @module('FooterApp').start()

  App.on 'initialize:after', ()->
    console.log 'margarita'
    Backbone.history.start()
  App