define [
  'jquery'
  'underscore'
  'backbone'

  'views/sidebar-project'
  'collections/project'

  'hbs!templates/sidebar'
], (
  $,
  _,
  Backbone,
  SidebarProjectView,
  ProjectCollection,
  sidebarTemplate
) ->

  class SidebarView extends Backbone.View

    className: 'col-md-2 sidebar'

    initialize: ->
      @render()

    render: ->
      template = sidebarTemplate {}
      @$el.html template
      @renderProjectsView()
      @

    renderProjectsView: ->
      sidebarProjectView = new SidebarProjectView(
        collection: new ProjectCollection()
      )
      injectView sidebarProjectView.el, @el
