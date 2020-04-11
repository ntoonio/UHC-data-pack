tellraw @p [{"selector":"@p[scores={deaths=1}]"},{"text":" har blivit eliminerad!","color":"yellow"}]
gamemode spectator @p[scores={deaths=1}]
scoreboard players set @p[scores={deaths=1}] deaths 0
scoreboard players reset @p[scores={deaths=1}] health
