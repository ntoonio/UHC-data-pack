gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule doInsomnia false
gamerule spawnRadius 1
# if same as spawn protection this should be 15
gamerule doDaylightCycle false
time set day

defaultgamemode survival
gamemode survival @a

schedule clear uhc:shrink_border

setblock 69420 201 69420 minecraft:structure_block[mode=load]{name:"uhc:lobby",posX:-7,posY:-1,posZ:-7,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock 69420 202 69420 minecraft:redstone_block
setblock 69420 201 69420 minecraft:air

setworldspawn 69420 201 69420
spawnpoint @a 69420 201 69420

worldborder center 69420 69420
worldborder set 15

tp @a 69420 201 69420

data modify storage uhc:game_data in_lobby set value true

team leave @a

team add tm_magenta "Magenta"
team add tm_purple "Lila"
team add tm_blue "Blå"
team add tm_light_blue "Ljus-blå"
team add tm_light_green "Ljus-grön"
team add tm_yellow "Gul"
team add tm_red "Röd"
team add tm_orange "Orange"
team add tm_green "Mörk-grön"
team add spectators "Spectators"

team modify tm_magenta color light_purple
team modify tm_purple color dark_purple
team modify tm_blue color dark_blue
team modify tm_light_blue color blue
team modify tm_light_green color green
team modify tm_yellow color yellow
team modify tm_red color red
team modify tm_orange color gold
team modify tm_green color dark_green
team modify spectators color dark_gray

scoreboard objectives add deaths deathCount
scoreboard objectives add health health "Health"

scoreboard objectives add select_team trigger
scoreboard players enable * select_team
