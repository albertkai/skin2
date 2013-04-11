@Skin.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _)->

  class List.Header extends Marionette.ItemView

      template: 'header/list/templates/_header'

  class List.Headers extends Marionette.CompositeView

      template: 'header/list/templates/list_header'

      itemView: List.Header

      itemViewContainer: 'ul'

      className: 'c-centered'