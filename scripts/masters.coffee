# Description:
# Paco will randomly select his favourite master

module.exports = (robot) ->
    rex = new RegExp('paco who is your favourite master.*', 'i')

    masters = ["Damien", "Menelaos", "Stelios", "Ben", "You my love"]

    punctuation = [".", "...", "!", "!!", " ;)", " :)"]

    getRandomElement = (array) ->
        if array.length is 0
            return undefined
        return array[Math.floor(Math.random() * (array.length - 1))]

    robot.hear rex, (res) ->
        res.send "My favourite master is, #{getRandomElement(masters)}, #{getRandomElement(punctuation)}"
