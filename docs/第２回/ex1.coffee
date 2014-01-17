a = 30
b = 50
console.log a+b

# 関数定義
hello = -> console.log "hello"
# 関数の呼び出し
hello()

# helloWord関数の定義
helloWorld = ->
	console.log "Hello"
	console.log "World"

# helloWorld関数の実行
helloWorld()

# 2つの数を足す関数
add = (a,b) -> a+b

# add関数の実行
sum = add 20,30
console.log sum

tommy = "トミー"
console.log "Hello, #{tommy}"

# 引数に(無名)関数を渡す
setTimeout ->
	console.log "1秒後にトミーが面白いことをする"
, 1000

week = ['日','月','火','水','木','金','土']
weekdays = week[1..5]
console.log weekdays

for i in [0..3]
	console.log "#{week[i]}曜日はわたぬきが面白いことをする"

weekdays.forEach (wday) ->
	console.log "#{wday}曜日はトミーが面白いことをする"

numbers = [1..20]

# numbersの中で、３の倍数ならアホになる。
# ３の倍数ではなく、４の倍数なら、天才になる。
for num in numbers
	if num % 3 == 0
		console.log "#{num} アホー。"
	else if num % 4 == 0
		console.log "#{num} てんさーい！"
	else
		console.log "#{num}"

persons =
	tommy:
		name: "トミー"
		age: 20
	watanuki:
		name: "ぬきわた"
		age: 20

console.log persons.watanuki.name

class Person
	constructor: (name) ->
		@age = 0
		@name = name
	speak: ->
		console.log "#{@name} speaks"

tommy = new Person "トミー"
nukiwata = new Person "わたぬき"
console.log tommy.name
nukiwata.speak()
