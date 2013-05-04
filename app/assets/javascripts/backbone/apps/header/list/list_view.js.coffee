@Skin.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _)->

  class List.Header extends Marionette.ItemView

      template: 'header/list/templates/header'

      className: 'c-centered'
