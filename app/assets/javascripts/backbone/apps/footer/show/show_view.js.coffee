@Skin.module 'FooterApp.Show', (Show, App, Backbone, Marionette, $, _)->

  class Show.Footer extends Marionette.ItemView

    template: "footer/show/templates/show_footer"

    className: 'c-centered'

    onBeforeRender: ()->
      $(@.el).addClass('_start')

    onRender: ()->
      setTimeout =>
        $(@.el).removeClass '_start'
      , 0

