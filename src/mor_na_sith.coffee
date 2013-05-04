class MorNaSith

  canvas: null
  canvasContext: null
  canvasHeight = 540
  canvasWidth = 540

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
    @lad = new GameImage('balach.png', 130, 150, 30, 40)
    @images.push(@grass)
    @images.push(@square)
    @images.push(@lad)

  tick: =>
    @drawWorld()
    keyPressed = @uiListener.currentKey
    if keyPressed?
      if keyPressed == 37
        @lad.x -= 10
      else if keyPressed == 38
        @lad.y -= 10
      else if keyPressed == 39
        @lad.x += 10
      else if keyPressed == 40
        @lad.y += 10

    setTimeout @tick, 100


  drawWorld: ->
    for image in @images
      @canvasContext.drawImage(image.image, image.x, image.y, image.width, image.height)


window.MorNaSith = MorNaSith
