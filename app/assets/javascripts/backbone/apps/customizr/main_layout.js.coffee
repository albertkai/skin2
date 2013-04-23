@Skin.module 'CustomizrApp', (CustomizrApp, App, Backbone, Marionette, $, _)->

  class CustomizrApp.MainLayout extends Marionette.ItemView

    template:  "customizr/templates/main_layout"

    className: 'c-centered'

    onRender: ()->
      alert 'rendered'