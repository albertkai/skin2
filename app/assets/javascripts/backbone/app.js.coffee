@Skin = do (Backbone, Marionette)->

  App = new Marionette.Application

  App.on 'initialize:before', (options)->

  App.addRegions
    header: 'header'
    main: '#main'
    footer: 'footer'

  App.addInitializer ->
    @module('FooterApp').start()
    @module('HeaderApp').start()
    #@module('CustomizrApp').start()

  App.on 'initialize:after', ()->
    console.log 'margarita'
    Backbone.history.start()
  App