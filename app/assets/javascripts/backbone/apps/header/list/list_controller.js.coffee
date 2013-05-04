@Skin.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _)->

  List.Controller =
    listHeader: ->
      headerView = new List.Header
      App.header.show headerView

