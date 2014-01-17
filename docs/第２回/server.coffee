http = require("http")
count = 0
http.createServer((request, response) ->
  count += 1
  result =
    number: "#{count}"
  response.writeHead 200,
    "content-Type": "text/json"
  response.end JSON.stringify(result)
).listen 8080
