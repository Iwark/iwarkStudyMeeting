# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

meeting = Meeting.new
meeting.name = "第１回：プログラミング基礎"
meeting.place = "Litカフェ(?)"
meeting.opend_at = DateTime.new(2013, 11, 26, 19, 00, 00)
meeting.description = "プログラミング一切わからない人や、基礎の基礎を復習したい人が主な対象です。"
meeting.save

user = User.new
user.name = "いわーく"
user.email = "iwark02@gmail.com"
user.password = "kouhei7y"
user.password_confirmation = "kouhei7y"
user.meetings << meeting
user.save