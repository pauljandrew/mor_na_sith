class UIListener
	@currentKey = null

	constructor: ->
		$("body").keydown (e) => @currentKey = e.keyCode
		$("body").keyup (e) => @currentKey = null