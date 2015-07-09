# Description:
# Paco likes to feel included in the joke.

module.exports = (robot) ->
    rex = new RegExp('haha', 'g')

    robot.hear rex, (res) ->
        res.send "hahahahahahahahahahaha LAUGHING IS FUN RIGHT GUYS?! :) :) :)"