define [
  'jquery'
  'underscore'
  'backbone'

  'collections/room-layout'
  'collections/project'

  'views/main-grid'
  'views/room-layout-grid'
  'views/sidebar'
  'views/sidebar-project'
], (
  $,
  _,
  Backbone,
  RoomLayoutCollection,
  ProjectCollection,
  MainGridView,
  RoomLayoutGridView,
  SidebarView,
  SidebarProjectView
) ->

  class FurRouter extends Backbone.Router

    routes:
      '(/)':'index'


    index: ->
      @createMainGrid()
      @createSidebar()
      @createRoomLayoutGrid()

    createMainGrid: ->
      @mainGridView = new MainGridView()
      injectView @mainGridView.el, 'body'

    createSidebar: ->
      sidebarView = new SidebarView()
      sidebarProjectView = new SidebarProjectView(
        collection: new ProjectCollection()
      )
      injectView sidebarView.el, @mainGridView.el
      injectView sidebarProjectView.el, sidebarView.el

    createRoomLayoutGrid: ->
      roomLayoutGridView = new RoomLayoutGridView(
        collection: new RoomLayoutCollection()
      )
      injectView roomLayoutGridView.el, @mainGridView.el


  initialize =  ->
    window.injectView = (c, p) ->
      $(p).append c
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
