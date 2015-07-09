# Description:
# Paco will randomly agree/disagree with a user when prompted with "right, paco?"

module.exports = (robot) ->
    rex = new RegExp('.*right.*paco.*', 'i')

    responses = ["Agreed", "Of course", "Let's take this offline", "I'm not so sure", "Hell no", "WTF", "If you say so", "Whatever you say"]

    punctuation = [".", "...", "!", "!!"]

    getRandomElement = (array) ->
        if array.length is 0
            return undefined
        return array[Math.floor(Math.random() * (array.length - 1))]

    robot.hear rex, (res) ->
        res.reply "#{getRandomElement(responses)}, #{res.message.user.name}#{getRandomElement(punctuation)}"
