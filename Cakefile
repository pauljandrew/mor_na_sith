{spawn, exec} = require 'child_process'
fs = require 'fs'
path = require 'path'

task 'build', 'Compile and move to assets', ->
  exec([
    'rm assets/js/*.js'
    'coffee -o assets/js/ -c src/*.coffee'
  ].join(' && '), (err) ->
    throw err if err
  )
# coffee --join assets/js/mornasith.js --watch --compile src/*coffee
