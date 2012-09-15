require 'coffee-script'
express = require 'express', http = require 'http'

app = express()

server = http.createServer app

app.get "/", (req,res)->
	res.send 'Bienvenido a coffee-script'
	console.log "Peticion solicitada"
server.listen 8080, ->
	console.log "Servidor se ha iniciado"