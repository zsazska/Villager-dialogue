scoreboard players set @s dialrc 0

execute if entity @e[tag=npcrightclickdetector,distance=..1] run item replace entity @s weapon.offhand from entity @e[tag=npcdial,sort=nearest,limit=1] villager.0

execute unless entity @e[tag=npcrightclickdetector,distance=..1] positioned ^ ^ ^0.1 run function npcdial:dialogue/viewraycast