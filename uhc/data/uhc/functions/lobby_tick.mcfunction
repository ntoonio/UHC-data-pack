execute if entity @a[scores={select_team=1}] run team join tm_magenta @a[scores={select_team=1}]
execute if entity @a[scores={select_team=2}] run team join tm_purple @a[scores={select_team=2}]
execute if entity @a[scores={select_team=3}] run team join tm_blue @a[scores={select_team=3}]
execute if entity @a[scores={select_team=4}] run team join tm_light_blue @a[scores={select_team=4}]
execute if entity @a[scores={select_team=5}] run team join tm_light_green @a[scores={select_team=5}]
execute if entity @a[scores={select_team=6}] run team join tm_yellow @a[scores={select_team=6}]
execute if entity @a[scores={select_team=7}] run team join tm_orange @a[scores={select_team=7}]
execute if entity @a[scores={select_team=8}] run team join tm_red @a[scores={select_team=8}]
execute if entity @a[scores={select_team=9}] run team join tm_green @a[scores={select_team=9}]
execute if entity @a[scores={select_team=0}] run team join spectators @a[scores={select_team=0}]

execute if entity @a[scores={select_team=1}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"magenta","color":"light_purple"}]
execute if entity @a[scores={select_team=2}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"lila","color":"dark_purple"}]
execute if entity @a[scores={select_team=3}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"blå","color":"dark_blue"}]
execute if entity @a[scores={select_team=4}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"ljus-blå","color":"blue"}]
execute if entity @a[scores={select_team=5}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"ljus-grön","color":"green"}]
execute if entity @a[scores={select_team=6}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"gul","color":"yellow"}]
execute if entity @a[scores={select_team=7}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"orange","color":"gold"}]
execute if entity @a[scores={select_team=8}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"röd","color":"red"}]
execute if entity @a[scores={select_team=9}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"grön","color":"dark_green"}]
execute if entity @a[scores={select_team=0}] run tellraw @a [{"text":"Du gick med i lag "},{"text":"spectators","color":"dark_gray"},{"text":". Du kommer inte att vara med i spelet. Om du vill delta måste du välja ett annat lag"}]

# When a player has joined a team, reset their team selection
execute if entity @a[scores={select_team=0..}] run scoreboard players set @a[scores={select_team=0..}] select_team -1

# Has to be enabled so that players can use /trigger
scoreboard players enable @a select_team

# Reset spectators health so that they don't show up in the sidebar
execute if entity @a[scores={health=0..}] run scoreboard players reset @a[team=spectators,scores={health=0..}] health
