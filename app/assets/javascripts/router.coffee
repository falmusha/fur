define [
  'jquery'
  'underscore'
  'backbone'

  'collections/room-layout'
  'collections/project'

  'views/home'
  'views/room-layout-grid'
  'views/sidebar'
  'views/sidebar-project'
], (
  $,
  _,
  Backbone,
  RoomLayoutCollection,
  ProjectCollection,
  HomeView,
  RoomLayoutGridView,
  SidebarView,
  SidebarProjectView
) ->

  class FurRouter extends Backbone.Router

    routes:
      '(/)':'index'


    index: ->
      @createHomeView()
      @createSidebar()
      @createRoomLayoutGrid()

    createHomeView: ->
      @homeView = new HomeView()
      container = $('<div>').addClass('container')
      injectView container, 'body'
      injectView @homeView.el, container

    createSidebar: ->
      sidebarView = new SidebarView()
      sidebarProjectView = new SidebarProjectView(
        collection: new ProjectCollection()
      )
      injectView sidebarView.el, @homeView.el
      injectView sidebarProjectView.el, sidebarView.el

    createRoomLayoutGrid: ->
      roomLayoutGridView = new RoomLayoutGridView(
        collection: new RoomLayoutCollection()
      )
      injectView roomLayoutGridView.el, @homeView.el


  initialize =  ->
    window.injectView = (c, p) ->
      $(p).append c
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
