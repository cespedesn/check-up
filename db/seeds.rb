# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
require "net/http"
require "open-uri"
require "json"

puts "🏀 Seeding users..."
u1 = User.create(full_name: "Neftali Cespedes", user_name:"cespedesn", password:"balldontlie123", email:"and1@gmail.com")
u2 = User.create(full_name:"LeCap James", user_name:"capcity", password:"captain123", email:"lecap@gmail.com")
u3 = User.create(full_name:"Steven A Jiff", user_name:"jiffy", password:"jif123", email:"jiffman@gmail.com")

puts "🏀 Seeding teams..."
URL_teams =
  "https://www.balldontlie.io/api/v1/teams"

uri = URI.parse(URL_teams)
response = Net::HTTP.get_response(uri)
data = JSON.parse(response.body)
data["data"].map do |team|
    Team.create(abbreviation: team["abbreviation"], city: team ["city"], conference: team ["conference"], division: team["division"],full_name: team["full_name"], name: team["name"])
end

puts "🏀 Seeding players..."

# URL_players =
#   "https://www.balldontlie.io/api/v1/players"

# uri = URI.parse(URL_players)
# response = Net::HTTP.get_response(uri)
# data = JSON.parse(response.body)
# data["data"].map do |player|

#     team = Team.find_by(name: player["team"]["name"]).id
#     Player.create(first_name: player["first_name"], last_name: player["last_name"], position: player["position"], height_feet: player["height_feet"], height_inches: player["height_inches"], weight_pounds: player["weight_pounds"], api_id: player["id"], team_id: team)

# end        
        # Team.find_or_create_by(abbreviation: player["team"]["abbreviation"], city: player["team"]["city"], conference: player["team"] ["conference"], division: player["team"]["division"],full_name: player["team"]["full_name"], name: player["team"]["name"]).id)
    #takes player json name associated with team and searches for team table for instance that matches that value
    p1 = Player.create(first_name:"Lebron", last_name:"James", position:"F", team:Team.find_by(abbreviation: "LAL"))
    p2 = Player.create(first_name:"Kevin", last_name:"Durant", position:"F", team:Team.find_by(abbreviation: "BRK"))
    p3 = Player.create(first_name:"Luka", last_name:"Doncic", position:"F", team:Team.find_by(abbreviation: "DAL"))
    p4 = Player.create(first_name:"Devin", last_name:"Booker", position:"G", team:Team.find_by(abbreviation: "PHX"))
    p5 = Player.create(first_name:"Chris", last_name:"Paul", position:"G", team:Team.find_by(abbreviation: "PHX"))
    p6 = Player.create(first_name:"Steph", last_name:"Curry", position:"G", team:Team.find_by(abbreviation: "GSW"))
    p7 = Player.create(first_name:"Kawhi", last_name:"Leonard", position:"F", team:Team.find_by(abbreviation: "LAC"))
    p8 = Player.create(first_name:"Joel", last_name:"Embiid", position:"C", team:Team.find_by(abbreviation: "PHI"))
    p9 = Player.create(first_name:"James", last_name:"Harden", position:"G" ,team:Team.find_by(abbreviation: "PHI"))
    p10 = Player.create(first_name:"Kyrie", last_name:"Irving",position:"G",team:Team.find_by(abbreviation: "BRK"))
    p11 = Player.create(first_name:"John", last_name:"Wall",position:"G",team:Team.find_by(abbreviation: "LAC"))
    p12 = Player.create(first_name:"Bradley", last_name:"Beal",position:"F",team:Team.find_by(abbreviation: "WAS"))
    p13 = Player.create(first_name:"Ben", last_name:"Simmons",position:"G",team:Team.find_by(abbreviation: "BRK"))
    p14 = Player.create(first_name:"Jordan", last_name:"Pool",position:"F",team:Team.find_by(abbreviation: "GSW"))
    p15 = Player.create(first_name:"Jalen", last_name:"Green",position:"F",team:Team.find_by(abbreviation: "HOU"))
    p16 = Player.create(first_name:"Draymond", last_name:"Green",position:"F",team:Team.find_by(abbreviation: "GSW"))
    p17 = Player.create(first_name:"Karl", last_name:"Anthony-Towns",position:"C",team:Team.find_by(abbreviation: "MIN"))
    p18 = Player.create(first_name:"Russell", last_name:"Westbrook",position:"G",team:Team.find_by(abbreviation: "LAL"))
    p19 = Player.create(first_name:"Evan", last_name:"Fournier",position:"G",team:Team.find_by(abbreviation: "NYK"))
    p20 = Player.create(first_name:"Julius", last_name:"Randal",position:"F",team:Team.find_by(abbreviation: "LAL"))
    p21 = Player.create(first_name:"Derrick", last_name:"Rose",position:"G",team:Team.find_by(abbreviation: "NYK"))
    p22 = Player.create(first_name:"Anthony", last_name:"Edwards",position:"G",team:Team.find_by(abbreviation: "MIN"))
    p23 = Player.create(first_name:"Carmelo", last_name:"Anthony",position:"F",team:Team.find_by(abbreviation: "LAL"))


puts "🏀 Seeding stats..."

URL_stats =
  "https://www.balldontlie.io/api/v1/stats"

uri = URI.parse(URL_stats)
response = Net::HTTP.get_response(uri)
data = JSON.parse(response.body)
data["data"].map do |stat|
    Stat.create(ast: stat["ast"],blk: stat["blk"],dreb: stat["dreb"],fg3_pct: stat["fg3_pct"],fg3a: stat["fg3a"],fg3m: stat["fg3m"],fg_pct: stat["fg_pct"],fga: stat["fga"],fgm: stat["fgm"],ft_pct: stat["ft_pct"],fta: stat["fta"],ftm: stat["ftm"], player_id: Player.find_or_create_by(last_name: stat["player"]["last_name"]).id)
end

s1 = Stat.create(ast:3,blk:1,dreb:4,fg3_pct:0.32,fg3a:11,fg3m:4,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:7, player_id:p1.id)
s2 = Stat.create(ast:2,blk:2,dreb:3,fg3_pct:0.29,fg3a:7,fg3m:4,fg_pct:0.63,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:7, player_id:p2.id)
s3 = Stat.create(ast:2,blk:1,dreb:4,fg3_pct:0.32,fg3a:11,fg3m:2,fg_pct:0.8,fga:9,fgm:4,ft_pct:0.39,fta:11,ftm:6, player_id:p3.id)
s4 = Stat.create(ast:3,blk:2,dreb:3,fg3_pct:0.29,fg3a:7,fg3m:4,fg_pct:0.8,fga:9,fgm:4,ft_pct:0.39,fta:11,ftm:7, player_id:p4.id)
s5 = Stat.create(ast:2,blk:0,dreb:3,fg3_pct:0.32,fg3a:11,fg3m:2,fg_pct:0.63,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:7, player_id:p5.id)
s6 = Stat.create(ast:3,blk:1,dreb:2,fg3_pct:0.29,fg3a:7,fg3m:2,fg_pct:0.8,fga:9,fgm:4,ft_pct:0.46,fta:11,ftm:6, player_id:p6.id)
s7 = Stat.create(ast:2,blk:2,dreb:4,fg3_pct:0.29,fg3a:11,fg3m:4,fg_pct:0.63,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:7, player_id:p7.id)
s8 = Stat.create(ast:2,blk:0,dreb:3,fg3_pct:0.32,fg3a:7,fg3m:6,fg_pct:0.8,fga:4,fgm:1,ft_pct:0.39,fta:11,ftm:6, player_id:p8.id)
s9 = Stat.create(ast:3,blk:1,dreb:2,fg3_pct:0.41,fg3a:11,fg3m:4,fg_pct:0.76,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:7, player_id:p9.id)
s10 = Stat.create(ast:2,blk:2,dreb:3,fg3_pct:0.29,fg3a:11,fg3m:5,fg_pct:0.8,fga:9,fgm:4,ft_pct:0.52,fta:11,ftm:6, player_id:p10.id)
s11 = Stat.create(ast:3,blk:1,dreb:4,fg3_pct:0.32,fg3a:7,fg3m:2,fg_pct:0.63,fga:4,fgm:1,ft_pct:0.43,fta:11,ftm:7, player_id:p11.id)
s12 = Stat.create(ast:2,blk:2,dreb:1,fg3_pct:0.41,fg3a:11,fg3m:4,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:11,ftm:5, player_id:p12.id)
s13 = Stat.create(ast:3,blk:0,dreb:3,fg3_pct:0.29,fg3a:11,fg3m:2,fg_pct:0.63,fga:9,fgm:4,ft_pct:0.39,fta:11,ftm:3, player_id:p13.id)
s14 = Stat.create(ast:2,blk:1,dreb:2,fg3_pct:0.32,fg3a:7,fg3m:4,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:8,ftm:7, player_id:p14.id)
s15 = Stat.create(ast:2,blk:2,dreb:4,fg3_pct:0.29,fg3a:11,fg3m:1,fg_pct:0.76,fga:9,fgm:4,ft_pct:0.44,fta:8,ftm:3, player_id:p15.id)
s16 = Stat.create(ast:3,blk:1,dreb:3,fg3_pct:0.32,fg3a:7,fg3m:2,fg_pct:0.8,fga:4,fgm:1,ft_pct:0.25,fta:8,ftm:3, player_id:p16.id)
s17 = Stat.create(ast:2,blk:2,dreb:2,fg3_pct:0.41,fg3a:11,fg3m:4,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:8,ftm:7, player_id:p17.id)
s18 = Stat.create(ast:2,blk:2,dreb:4,fg3_pct:0.29,fg3a:7,fg3m:2,fg_pct:0.8,fga:9,fgm:4,ft_pct:0.45,fta:8,ftm:3, player_id:p18.id)
s19 = Stat.create(ast:3,blk:1,dreb:3,fg3_pct:0.32,fg3a:11,fg3m:4,fg_pct:0.63,fga:4,fgm:1,ft_pct:0.25,fta:8,ftm:8, player_id:p19.id)
s20 = Stat.create(ast:2,blk:2,dreb:2,fg3_pct:0.41,fg3a:6,fg3m:2,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:13,ftm:7, player_id:p20.id)
s21 = Stat.create(ast:2,blk:1,dreb:4,fg3_pct:0.29,fg3a:11,fg3m:4,fg_pct:0.8,fga:9,fgm:3,ft_pct:0.33,fta:13,ftm:3, player_id:p21.id)
s22 = Stat.create(ast:3,blk:2,dreb:1,fg3_pct:0.32,fg3a:4,fg3m:2,fg_pct:0.63,fga:13,fgm:6,ft_pct:0.42,fta:8,ftm:3, player_id:p22.id)
s23 = Stat.create(ast:2,blk:0,dreb:1,fg3_pct:0.29,fg3a:11,fg3m:4,fg_pct:0.76,fga:9,fgm:3,ft_pct:0.33,fta:8,ftm:7, player_id:p23.id)

# puts "🏀 Seeding season averages..."

# URL_season_averages =
#   "https://www.balldontlie.io/api/v1/season_averages"

# uri = URI.parse(URL_season_averages)
# response = Net::HTTP.get_response(uri)
# data = JSON.parse(response.body)
# data.map do |season_average|
#     SeasonAverage.create(games_played: data["games_played"],player_id: data["player_id"],season: data["season"],min: data["min"],fgm: data["fgm"],fga: data["fga"],fg3m: data["fg3m"],fg3a: data["fg3a"],ftm: data["ftm"],fta: data["fta"],oreb: data["oreb"],dreb: data["dreb"],reb: data["reb"],ast: data["ast"],stl: data["stl"],blk: data["blk"],turnover: data["turnover"],pf: data["pf"],pts: data["pts"],fg_pct: data["fg_pct"],fg3_pct: data["fg3_pct"],ft_pct: data["ft_pct"],stats_id: data["stats_id"])
# end
puts "🏀 Seeding Done!"
















# puts "🏀 Seeding users..."
# u1 = User.create(full_name:, user_name:, password:, email:)
# u2 = User.create(full_name:, user_name:, password:, email:)
# u3 = User.create(full_name:, user_name:, password:, email:)

# puts "🏀 Seeding teams..."
# t1 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t2 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t3 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t4 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t5 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t6 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t7 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t8 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t9 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t10 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t11 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t12 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t13 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t14 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t15 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t16 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t17 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t18 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t19 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t20 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t21 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t22 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t23 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t24 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t25 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t26 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t27 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t28 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t29 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)
# t30 = Team.create(abbreviation:, city:, conference:, division:, full_name:, name:, user_id:)

# puts "🏀 Seeding players..."

# p24 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p25 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p26 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p27 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p28 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p29 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)
# p30 = Player.create(first_name:, last_name:,position:, height_feet:, height_inches:, weight_pounds:, team:, team_id:)


# puts "🏀 Seeding stats..." 

# s24 = Stat.create(ast:3,blk:1,dreb:4,fg3_pct:0.32,fg3a:11,fg3m:2,fg_pct:0.8,fga:13,fgm:6,ft_pct:0.42,fta:8,ftm:3, player_id:p, season_average:)
# s25 = Stat.create(ast:2,blk:0,dreb:1,fg3_pct:0.41,fg3a:9,fg3m:2,fg_pct:0.63,fga:4,fgm:1,ft_pct:0.25,fta:13,ftm:7, player_id:p, season_average:)
# s26 = Stat.create(ast:2,blk:1,dreb:4,fg3_pct:0.29,fg3a:11,fg3m:4,fg_pct:0.76,fga:9,fgm:3,ft_pct:0.33,fta:8,ftm:8, player_id:p, season_average:)
# s27 = Stat.create(ast:3,blk:2,dreb:1,fg3_pct:0.32,fg3a:5,fg3m:2,fg_pct:0.63,fga:4,fgm:1,ft_pct:0.25,fta:13,ftm:7, player_id:p, season_average:)
# s28 = Stat.create(ast:2,blk:1,dreb:4,fg3_pct:0.29,fg3a:11,fg3m:4,fg_pct:0.76,fga:13,fgm:6,ft_pct:0.42,fta:13,ftm:7, player_id:, season_average:)
# s29 = Stat.create(ast:2,blk:2,dreb:1,fg3_pct:0.32,fg3a:7,fg3m:4,fg_pct:0.76,fga:4,fgm:1,ft_pct:0.25,fta:8,ftm:3, player_id:, season_average:)
# s30 = Stat.create(ast:3,blk:1,dreb:4,fg3_pct:0.41,fg3a:11,fg3m:4,fg_pct:0.76,fga:13,fgm:6,ft_pct:0.42,fta:13,ftm:3, player_id:, season_average:)

# puts "🏀 Seeding season averages..."