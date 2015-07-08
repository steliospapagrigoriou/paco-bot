# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
    rex = new RegExp('$', 'i')

    robot.respond rex, (res) ->
        name = res.message.user.name
        if name == "carles"
            res.reply "sta arxidia mou"
        else
            res.reply "Yes master #{name}?"
