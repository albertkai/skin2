@Skin.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _)->

  List.Controller =
    listHeader: ->
      links = App.request "header:entities"
      headerView = @getHeaderView links
      App.header.show headerView

    getHeaderView: (links)->
      console.log 'yep'
      new List.Headers
        collection: links

