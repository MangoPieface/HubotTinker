module.exports = (robot) ->
    robot.respond /deploy (.*)/i, (res) ->
    project = res.match[1]
    if doorType is "dogs"
        res.reply "Deploying the #{project} infrastructure."
    else
        res.reply "I'm afraid I can't let you do that."