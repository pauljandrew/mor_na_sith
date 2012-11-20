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
# coffee --output assets/js --watch --join --compile src/*coffee
