# Description:
#   If Paco detects a swear word it will complain to its sender.
#
# Notes:
#   Uses the Purgo Malum API.


module.exports = (robot) ->
    rex = new RegExp('.*', 'g')

    robot.hear rex, (msg) ->
        url = "http://www.purgomalum.com/service/containsprofanity?text=#{msg.match[0]}"
        msg.http(url)
            .get() (err, res, body) ->
                if body is "true"
                    msg.send "How rude!! I expected more from you, #{msg.message.user.name}"