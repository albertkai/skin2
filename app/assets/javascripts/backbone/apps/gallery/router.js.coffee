@Skin.module 'GalleryApp', (GalleryApp, App, Backbone, Marionette, $, _)->
  @startWithParent = false

  class Router extends Backbone.Router

    routes:
      "gallery": "galleryShow"

    galleryShow: ()->
      App.GalleryApp.controller.showGallery()

  App.addInitializer ->
    router = new Router