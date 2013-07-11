xmpp = require 'simple-xmpp'
exec = require('child_process').exec

settings = require('./app').settings

module.exports = (from, message) ->
  split = message.split ' '
  key = split[0]

  if settings.gruntfiles[key]
    split.splice 0, 1
    split.unshift 'grunt', '--no-color', "--gruntfile=#{settings.gruntfiles[key]}"

    task = exec(split.join ' ')
    task.stdout.on 'data', (response) ->
      process.stdout.write response
      xmpp.send from, response
  else
    response = "#{key}: No Gruntfile found."
    console.log response
    xmpp.send from, response
