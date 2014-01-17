class Game
  constructor: ->
    @turn = 0
  start: (first,second) ->
    console.log "Turn #{this.turn}: #{first.name}(hp:#{first.hp}) vs #{second.name}(hp:#{second.hp}) "
    plus = Math.floor Math.random()*5
    if first.atk + plus > second.def
      second.hp -= first.atk + plus - second.def
      console.log "#{first.name}の攻撃！ #{second.name}に#{first.atk + plus - second.def}のダメージ！"
    else
      console.log "#{first.name}の攻撃！ #{second.name}にダメージを与えられなかった...。"

    if second.atk > first.def
      first.hp -= second.atk - first.def
      console.log "#{second.name}の攻撃！ #{first.name}に#{second.atk - first.def}のダメージ！"
    else
      console.log "#{second.name}の攻撃！ #{first.name}にダメージを与えられなかった...。"
    console.log ""
    @turn++
    return

class Player
  constructor: (@name,@atk,@def,@speed) ->
    @hp = 200

player1 = new Player "いわーく", 7, 8, 0
player2 = new Player "くっちー", 5, 9, 1
game = new Game()

loop
  if player1.speed > player2.speed
    first = player1
    second = player2
  else if player2.speed > player1.speed
    first = player2
    second = player1
  else
    if Math.random() < 0.5
      first = player1
      second = player2
    else
      first = player2
      second = player1
  game.start first, second

  if player1.hp <= 0 && player2.hp <= 0
    console.log "なんと、相打ちだった！"
    break
  else if player1.hp <= 0
    console.log "#{player1.name}は死んだ。"
    break
  else if player2.hp <= 0
    console.log "#{player2.name}は死んだ。"
    break
