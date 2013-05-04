@Skin.module 'CustomizrApp.Constructor', (Constructor, App, Backbone, Marionette, $, _)->

  Constructor.controller =

    showConstructor: ()->

      constructor = new Constructor.Main
      console.log constructor
      App.CustomizrApp.cmzrLayout.constr.show constructor



  class Constructor.Main extends Marionette.ItemView

    template:  "customizr/templates/constructor"

    events:

      'click': 'expand'

    expand: ()->

      $(@.el).toggleClass('_expanded')
      transitionEnd($(@.el)).bind ()=>
        App.vent.trigger 'constructor:opened' if $(@.el).hasClass '_expanded'
        transitionEnd($(@.el)).unbind()


