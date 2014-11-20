define [
  'jquery'
  'underscore'
  'backbone'

  'views/home'
  'views/main-body'
  'views/sidebar'
], (
  $,
  _,
  Backbone,
  HomeView,
  MainBodyView
  SidebarView
) ->

  class FurRouter extends Backbone.Router

    routes:
      '(/)':'index'


    index: ->
      @createHomeView()
      @createSidebar()
      @createMainBody()

    createHomeView: ->
      @homeView = new HomeView()
      container = $('<div>').addClass('container')
      injectView @homeView.el, container
      injectView container, 'body'

    createSidebar: ->
      @sidebarView = new SidebarView()
      injectView @sidebarView.el, @homeView.el

    createMainBody: ->
      @mainBodyView = new MainBodyView()
      injectView @mainBodyView.el, @homeView.el


  initialize =  ->
    window.injectView = (c, p) ->
      $(p).append c
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
