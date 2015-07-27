class App.Views.Issues extends Backbone.View

  template: HandlebarsTemplates['issues']

  initialize: ->
    @childViews = []

  render: ->
    #alert 'render issue'
    @$el.html(@template({ count: @collection.length }))
    @collection.forEach @renderIssue, @
    @

  renderIssue: (model) ->
    #alert 'render concrete issue'
    #alert(JSON.stringify(model))
    v = new App.Views.Issue({ model: model})
    @childViews.push(v)
    #alert(JSON.stringify(v))
    @$('#issues_list').append(v.render().el)