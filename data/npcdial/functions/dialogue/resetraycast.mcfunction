scoreboard players set @s dialrc 0

execute if entity @e[tag=npcrightclickdetector,distance=..1] as @e[tag=npcdial,sort=nearest,limit=1] at @s run function npcdial:dialogue/resetdialogue

execute unless entity @e[tag=npcrightclickdetector,distance=..1] positioned ^ ^ ^0.1 run function npcdial:dialogue/resetraycast