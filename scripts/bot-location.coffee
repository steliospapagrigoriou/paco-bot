os = require("os");


module.exports = (robot) ->
    rex = new RegExp('where are you?', 'i')

    robot.respond rex, (res) ->
        console.log()
        try
            hostname = os.hostname()
            if hostame != ""
                reply = "I'm at " hostname
            else
                reply = "Host won't tell me!! :/"
            res.reply reply
        catch err
            console.log(err)
            res.reply "I don't know!! :/"
