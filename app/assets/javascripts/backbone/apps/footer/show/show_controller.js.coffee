@Skin.module 'FooterApp.Show', (Show, App, Backbone, Marionette, $, _)->

  Show.Controller =
    showFooter: ->
      footerView = @getFooterView()
      App.footer.show footerView

    getFooterView: ->
      new Show.Footer
