class Sprite
  ready: false
  dir: "../images/"

  constructor: (@name) ->
    image = new Image
    image.src = @dir + @name
    image.onload = => @ready = true
    @image = image
