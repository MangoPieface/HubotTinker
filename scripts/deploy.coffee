module.exports = (robot) ->
    robot.respond /deploy (.*)/i, (res) ->
        project = res.match[1]
        if project is "dogs"
            res.reply "Deploying the #{project} infrastructure."
        else
            res.reply "I cannot let you do that"