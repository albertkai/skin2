@Skin.module 'CustomizrApp.Prints', (Prints, App, Backbone, Marionette, $, _)->

  Prints.controller =

    showPrints: ()->

      console.log 'yeps'

      prints = new PrintsView
        collection: new Prints

      App.CustomizrApp.cmzrLayout.prints.show prints





  class Print extends Backbone.Model

  class Prints extends Backbone.Collection

    model: Print

    url: '/prints/list/All/All.json'

  class PrintView extends Marionette.ItemView

    className: 'item'

    template:  'customizr/templates/_print'

    events:

      'click': 'changePrint'

    changePrint: (e)->
      alert 'changed'

  #Composite view for Prints container
  #Changes the print property of shirt model when clicked
  #and triggers 'print:change' event

  class PrintsView extends Marionette.CompositeView

    template: 'customizr/templates/prints'

    itemView: PrintView

    itemViewContainer: '.prints-cont'

    initialize: ()=>
      @collection.fetch
        success: ()=>
          @render()

    onRender: ()->
      console.log @collection


