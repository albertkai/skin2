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

  App.on 'initialize:after', ()->
    Backbone.history.start(pushstate: true)
  App