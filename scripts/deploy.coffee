module.exports = (robot) ->
    robot.respond /deploy (.*)/i, (res) ->
        projectKey = res.match[1]
        data = JSON.stringify(
            [
                { 
                "id": "28069", 
                "eventType": "recordInserted", 
                "subject": "myapp/vehicles/motorcycles", 
                "eventTime": "2017-08-18T11:56:45+00:00", 
                "data":{ "make": "Ducati", "model": "Monster" } 
                } 
            ]
        )
        robot.http("https://guidedogsteston.westus2-1.eventgrid.azure.net/api/events")
        .header('aeg-sas-key', projectKey)
        .post(data) (err, response, body) ->
        #test

        res.reply "Deploying!"
    