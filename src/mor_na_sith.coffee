class MorNaSith

  canvas: null
  canvasContext: null
  canvasHeight = 640
  canvasWidth = 640

  constructor: ->
    @drawCanvas()
    @getContext()
    @images = []
    @drawBackground()
    @uiListener = new UIListener()
    #@canvasContext.fillText("WOOOOOooOOOARGH", 10, 10)
    @tick()

  drawCanvas: ->
    @canvas = document.createElement 'canvas'
    @canvas.height = canvasHeight
    @canvas.width = canvasWidth

    document.body.appendChild @canvas


  getContext: ->
    @canvasContext = @canvas.getContext '2d'


  drawBackground: ->
    @grass = new GameImage('grass.png', 0, 0, canvasHeight, canvasWidth)
    @square = new GameImage('square.png', 150, 350, 16, 16)
    @images.push(@grass)
    @images.push(@square)

  tick: =>
    @drawWorld()
    if @uiListener.currentKey
      console.log(@uiListener.currentKey)

    setTimeout @tick, 100


  drawWorld: ->
    for image in @images
      @canvasContext.drawImage(image.image, image.x, image.y, image.width, image.height)


window.MorNaSith = MorNaSith
