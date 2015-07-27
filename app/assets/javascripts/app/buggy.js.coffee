#= require_self
#= require_tree ./models
#= reqiure_tree ./templates
#= require_tree ./views
#= require_tree ./routers
window.App =
  Routers: {}
  Views: {}
  Collections: {}
  Models: {}
  Vent: _.clone(Backbone.Events)
  initialize: ->
    new App.Routers.MainRouter()
    alert 'kkk'
    Backbone.history.start()
    alert 'after start'


  initialize45: -> alert "kk"