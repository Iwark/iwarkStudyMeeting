http = require("http")
path = require("path")
count = 0
pages = [
		route: 'plus'
		output: -> count += 1
	,
		route: 'minus'
		output: -> count -= 1
	,
		route: 'kakeru'
		output: -> count *= 2
	,
		route: 'waru'
		output: -> count /= 2
]
http.createServer((request, response) ->
	lookup = path.basename decodeURI(request.url)
	pages.forEach (page) ->
		if page.route == lookup
			page.output()
			result =
				number: "#{count}"
			response.writeHead 200,
				"content-Type": "text/json"
			response.end JSON.stringify(result)
).listen 8080