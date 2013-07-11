xmpp = require 'simple-xmpp'

env = process.env.NODE_ENV or 'development'
settings = module.exports.settings = require('./settings').export env

xmpp.on 'error', (err) -> console.error err
xmpp.on 'online', () -> console.log "Online since #{(new Date().toLocaleString())}"
xmpp.on 'chat', require './chat'

xmpp.connect settings.xmpp.connect
