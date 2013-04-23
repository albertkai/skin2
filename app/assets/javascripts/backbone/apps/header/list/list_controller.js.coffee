@Skin.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _)->

  List.Controller =
    listHeader: ->
      #headerView = @getHeaderView
      #App.header.show headerView

    getHeaderView: ()->
      #new List.Header

