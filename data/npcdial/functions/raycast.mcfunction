scoreboard players set @s dialrc 0

execute if entity @e[type=villager,distance=..1,tag=!npcrightclickdetector] as @e[type=villager,distance=..1,tag=!npcrightclickdetector] run function npcdial:applydialogue

execute unless entity @e[type=villager,distance=..1,tag=!npcrightclickdetector] positioned ^ ^ ^0.1 run function npcdial:raycast