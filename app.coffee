require "coffee-script"

express = require 'express'
engines = require 'consolidate'
http = require "http"
server = http.createServer app
app = express()

app.engine 'eco', engines.eco
app.configure ->
	app.set 'views', __dirname + "/views"
	app.use express.static(__dirname + "/public")
app.get "/", (res,req)->
	res.redirect 'http://facebook.com'

server.listen 8000, ->
	console.log "Server iniciado"