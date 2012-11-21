class MorNaSith

  canvas: null
  canvasContext: null

  constructor: ->
    @drawCanvas()
    @getContext()
    @sprites = []
    @drawBackground()

    @canvasContext.fillText("WOOOOOooOOOARGH", 10, 10)
    @tick()

  drawCanvas: ->
    @canvas = document.createElement 'canvas'
    @canvas.height = 500
    @canvas.width = 400
    document.body.appendChild @canvas


  getContext: ->
    @canvasContext = @canvas.getContext '2d'


  drawBackground: ->
    @grass = new Sprite('grass.png')
    @sprites.push(@grass)

  tick: =>
    @drawWorld()

    setTimeout @tick, 100


  drawWorld: ->
    for sprite in @sprites
      @canvasContext.drawImage(sprite.image, 10, 1, 100, 100)


window.MorNaSith = MorNaSith
