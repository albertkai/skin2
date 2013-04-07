Backbone.Marionette.Renderer.render = (template, data)->
  path = JST["backbone/apps/" + template]
  unless path
    throw "Theres no such template: #{ template }"
  path(data)