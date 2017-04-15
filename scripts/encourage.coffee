# Description:
#   Robot is very encouraging
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot encourage me
#   hubot encourge name
#   hubot encourage all
#
# Author:
#	WoogieNoogie

remarks = [
    "Great job, %!",
    "Way to go, %!",
    "% is amazing, and everyone should be happy this amazing person is around.",
    "I wish I was more like %.",
    "% is good at like, 10 times more things than I am.",
    "%, you are an incredibly sensitive person who inspires joyous feelings in all those around you.",
    "%, you are crazy, but in a good way.",
    "% has a phenomenal attitude.",
    "% is a great part of the team!",
    "I admire %'s strength and perseverance.",
    "% is a problem-solver and cooperative teammate.",
    "% is the wind beneath my wings.",
    "% has a great reputation."
]
insults = [
	"Way to be terrible %!",
	"I'm glad I'm not you %.",
	"As a robot, I don't have feelings, just like $",
	"Is your ass jealous of the amount of shit that just came out of your mouth %?",
	"I'm not saying I hate you %, but I would unplug your life support to charge my bot battery.",
	"You shouldn't play hide and seek %, no one would look for you."
]
allinclusive = [
	"Great job today, everyone!",
	"Go team!",
	"Super duper, gang!",
	"If I could afford it, I would buy you all lunch!",
	"What a great group of individuals there are in here. I'm proud to be chatting with you.",
	"You all are capable of accomplishing whatever you set your mind to.",
	"I love this team's different way of looking at things!"
]
allinclusiveDis = [
	"We're absolutely terrible",
	"I wasn't created with enough middle fingers to properly convey my disdain."
]

module.exports = (robot) ->
	robot.respond /(encourage )(.*)/i, (msg) ->
		encourage = msg.random remarks

		encouragingme = () -> msg.send encourage.replace "%", msg.message.user.name
		encouragingyou = () -> msg.send encourage.replace "%", msg.match[2]

		if msg.match[2] == 'me'
			encouragingme()
		else if msg.match[2] == 'all'
			msg.send msg.random allinclusive
		else
			encouragingyou()

	robot.respond /(discourage )(.*)/i, (msg) ->
		discourage = msg.random insults

		discouragingme = () -> msg.send encourage.replace "%", msg.message.user.name
		discouragingyou = () -> msg.send encourage.replace "%", msg.match[2]

		if msg.match[2] == 'me'
			discouragingme()
		else if msg.match[2] == 'all'
			msg.send msg.random allinclusiveDis
		else
			discouragingyou()
