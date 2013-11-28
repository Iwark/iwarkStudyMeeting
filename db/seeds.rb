# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

meeting = Meeting.new
meeting.name = "第１回：プログラミング基礎"
meeting.place = "Litカフェ（目黒事務所）"
meeting.opend_at = DateTime.new(2013, 11, 26, 19, 00, 00)
meeting.description = "【いわーく編】\r\n・コンピュータの３大原則\r\n・変数、メソッド（、配列、制御文）\r\n・綺麗なコードの書き方①\r\n - ４つの原則\r\n - 変数名の付け方\r\n - インデント\r\n - マジックナンバー\r\n - コメント\r\n・カウントアプリ作成タイムアタック\r\n・MVC\r\n・KVO\r\n・MVCカウントアプリ作成（実践）\r\n （参考：https://github.com/Iwark/MVCCountApp）\r\n\r\n【ダニー編】\r\n・基本的なコマンドについての説明、デモ\r\n - init / add / commit / pull / push / status / log / branch / checkout等\r\n・Githubで実践\r\n - １つのウェブサイトを更新し合ってpull / pushでの共同作業の体験\r\n - conflictを解決（手動 / git chekcout --ours / --theirs）\r\n - branchを作っての作業\r\n（参考サイト：http://hajipion.com/webservice/266.html）"
meeting.save

user = User.new
user.name = "iwark"
user.email = "iwark@iwark.com"
user.password = "iwark"
user.password_confirmation = "iwark"
user.meetings << meeting
user.save
