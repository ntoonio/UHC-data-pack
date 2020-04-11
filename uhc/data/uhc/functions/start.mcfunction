gamerule doDaylightCycle true
time set day

worldborder set 5000
worldborder center 0 0
worldborder damage amount 0

defaultgamemode spectator
team join spectators @a[team=]

gamemode spectator @a[team=spectators]

data modify storage uhc:game_data in_lobby set value false

team modify tm_magenta nametagVisibility hideForOtherTeams
team modify tm_purple nametagVisibility hideForOtherTeams
team modify tm_blue nametagVisibility hideForOtherTeams
team modify tm_light_blue nametagVisibility hideForOtherTeams
team modify tm_light_green nametagVisibility hideForOtherTeams
team modify tm_yellow nametagVisibility hideForOtherTeams
team modify tm_red nametagVisibility hideForOtherTeams
team modify tm_orange nametagVisibility hideForOtherTeams
team modify tm_green nametagVisibility hideForOtherTeams

scoreboard players reset @a deaths

effect give @a[team=!spectators] minecraft:regeneration 10 255
effect give @a[team=!spectators] minecraft:saturation 10 255

spreadplayers 0 0 300 500 true @a[team=!spectators]

worldborder damage amount 1

schedule function uhc:shrink_border 1800s
