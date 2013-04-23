@Skin.module 'CustomizrApp', (CustomizrApp, App, Backbone, Marionette, $, _)->

  CustomizrApp.controller =
    showCustomizr: ()->
      cmzrLayout = new CustomizrApp.MainLayout
      console.log cmzrLayout
      App.main.show cmzrLayout