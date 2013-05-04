@Skin.module 'GalleryApp', (GalleryApp, App, Backbone, Marionette, $, _)->

  GalleryApp.controller =
    showGallery: ()->
      console.log 'gallery'
      GalleryApp.galleryView = new GalleryView
        collection: new Items([{"name": "hey"}, {"name": "yo"}])
      App.main.show GalleryApp.galleryView

  class Item extends Backbone.Model

  class Items extends Backbone.Collection

    model: Item

  class GalleryItem extends Marionette.ItemView

    template: 'gallery/templates/gallery_item'

  class GalleryView extends Marionette.CompositeView

    className: 'c-centered gallery'

    template: 'gallery/templates/gallery'

    itemView: GalleryItem
