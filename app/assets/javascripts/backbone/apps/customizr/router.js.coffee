@Skin.module 'CustomizrApp', (CustomizrApp, App, Backbone, Marionette, $, _)->
  @startWithParent = false

  class Router extends Backbone.Router

    routes:
      "customizr": "customizrShow"
      "customizr/basket": "basketShow"

    customizrShow: ()->
      App.CustomizrApp.controller.showCustomizr()

    basketShow: ()->
      alert 'basket'
      App.CustomizrApp.Basket.controller.showBasket()

  App.addInitializer ->
    router = new Router