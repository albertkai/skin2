@Skin.module 'CustomizrApp', (CustomizrApp, App, Backbone, Marionette, $, _)->

  class CustomizrApp.MainLayout extends Backbone.Marionette.Layout

    template:  "customizr/templates/main_layout"

    className: "customizr"

    regions:

      'constr': '.constructor'
      'shirt': '.shirt'
      'prints': '.prints'
      'basket': '.basket'

    events:

      'click .constructor': 'expand'

    expand: (e)->

      $(e.target).closest('.constructor').toggleClass('_expanded')
      transitionEnd($(@.el)).bind ()=>
        App.vent.trigger 'constructor:opened'  if $(e.target).closest('.constructor').hasClass('_expanded')
        CustomizrApp.Constructor.controller.showConstructor() if $(e.target).closest('.constructor').hasClass('_expanded')
        transitionEnd($(@.el)).unbind()

