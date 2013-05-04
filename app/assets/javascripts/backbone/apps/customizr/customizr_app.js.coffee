@Skin.module 'CustomizrApp', (CustomizrApp, App, Backbone, Marionette, $, _)->

  CustomizrApp.controller =
    showCustomizr: ()->
      CustomizrApp.cmzrLayout = new CustomizrApp.MainLayout
      App.main.show CustomizrApp.cmzrLayout
      @showPrints()

    showPrints: ()->
      CustomizrApp.Prints.controller.showPrints()