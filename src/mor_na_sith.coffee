class MorNaSith

  canvas: null
  canvasContext: null

  constructor: ->
    @drawCanvas()
    @getContext()


  drawCanvas: ->
    @canvas = document.createElement 'canvas'
    @canvas.height = 500
    @canvas.width = 400
    document.body.appendChild @canvas


  getContext: ->
    @canvasContext = @canvas.getContext '2d'


window.MorNaSith = MorNaSith