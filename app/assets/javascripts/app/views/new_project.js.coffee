class App.Views.NewProject extends Backbone.View

  template: HandlebarsTemplates['new_project']

  events:
      #"click input:button": "saveProject"
    "click button": "saveProject"

#  initialize: ->
#    @listenTo @model, "sync", @triggerProjectCreate
#
#  triggerProjectCreate: ->
#    App.Vent.trigger "project:create", @model

  render: ->
    #@saveProject1()
    #console.log @model.toJSON()
    @$el.html(@template(JSON.stringify(@model)))
    @

  saveProject1: ->
    alert("from save project1")
    @model.set name: "Ivan"
    @model.set description: "Descript"
    @model.save()
    @


  saveProject: (e) =>

    e.preventDefault();
    @model.set name: @$('#name2').val()
    @model.set description: @$('#description2').val()
    console.log @model.toJSON()
    @model.save {},
      success: (model) -> App.Vent.trigger "project:create", model
      #error
