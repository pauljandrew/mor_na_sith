class GameImage
  ready: false
  dir: "../images/"
  # x, y -  Canvas coordinate
  # width	Optional param for resizing
  # height

  constructor: (@name, @x, @y, @width, @height) ->
    image = new Image
    image.src = @dir + @name
    image.onload = => @ready = true
    @image = image
