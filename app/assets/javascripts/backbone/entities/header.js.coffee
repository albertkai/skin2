@Skin.module 'Entities', (Entities, App, Backbone, Marionette, $, _)->

  class Entities.Header extends Backbone.Model

  class Entities.HeaderColl extends Backbone.Collection

    model: Entities.Header

  API =
    getHeaders: ()->
      new Entities.HeaderColl [
        {name: 'о проекте'},
        {name: 'инфо'},
        {name: 'доставка'}
      ]

  console.log App.reqres

  App.reqres.setHandler "header:entities", ()->

   API.getHeaders()

