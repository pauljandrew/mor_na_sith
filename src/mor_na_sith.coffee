class MorNaSith

  canvas: null
  canvasContext: null

  constructor: ->
    @drawCanvas()
    @getContext()
    @drawBackground()


  drawCanvas: ->
    @canvas = document.createElement 'canvas'
    @canvas.height = 500
    @canvas.width = 400
    document.body.appendChild @canvas


  getContext: ->
    @canvasContext = @canvas.getContext '2d'


  drawBackground: ->
    @grass = new Sprite('grass.png')
    @canvasContext.drawImage(@grass.image, 1, 1, 100, 100)

window.MorNaSith = MorNaSith