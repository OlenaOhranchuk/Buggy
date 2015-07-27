class App.Views.Issue extends Backbone.View

  template: HandlebarsTemplates["issue"]

  render: ->
    alert('rendering issue')
    alert(JSON.stringify(@model))
    @$el.html(@template(JSON.stringify(@model)))
    alert("issue rendered")
    @