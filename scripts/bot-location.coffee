os = require("os")

module.exports = (robot) ->

    rex = new RegExp('where are you?', 'i')

    robot.respond rex, (res) ->
        hostname = ""
        try
            hostname = os.hostname()
            if hostname != ""
                reply = "I'm at #{hostname}"
            else
                reply = "Host won't tell me!! :/"

            res.reply reply
        catch err
            console.log(err)
            res.reply "Something bad is happening... aaaah...I don't know!!"
