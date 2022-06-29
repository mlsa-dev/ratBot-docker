## Purpose

This discord bot allows usesrs to record team kill statistics for a game. However, it is generic and can be configured to any game needed by editing database fields. 

## Bot Configuration

ratBot's commands are invoked by using the command prefix which is an exclamation mark. (!)

ratBot uses a database to record data in tables and is currently configured for MySQL 8.0.

1. Create a database connecction with bot
2. [Join the bot to your discord server]
(https://discord.com/api/oauth2/authorize?client_id=986455489070108752&permissions=8&scope=bot)  

At this point you are ready to go, use !help command to learn more about ratBot's commands.

## Running in Development

The [source repo](https://github.com/a1sauc/ratBot) is the latest working copy of the project. It should be considered unstable.

The [Docker repo](https://github.com/mlsa-dev/ratBot-docker) is the Docker implementation of the project. Likewise, it should be considered unstable.

## Environment Variables

RATBOT_DISCORD_TOKEN
RATBOT_DB_HOST
RATBOT_DB_NAME
RATBOT_DB_USERNAME
RATBOT_DB_PW

## Production Notes

* This was my first discord bot project and I used this guide to start. (https://realpython.com/how-to-make-a-discord-bot-python/)
* Note that when creating a bot, you may need to enable "Server Member intent" flag on the bot page in the Discord developers portal. 
* Delete function that deletes tables will be commented out initially. Later releases may have an edited version to only allow the "bot owner" to use the !delete command. 

## From Author

I am a undergraduate student at the University of Texas at Dallas. I wanted to make a discord bot to help my friends but also learn python and databases. I chose MySQL because of the online resources that are great for beginners. Thanks for checking out my work. 
