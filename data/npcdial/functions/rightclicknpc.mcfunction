execute unless entity @e[tag=npcrightclickdetector,distance=...5] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["npcrightclickdetector"],Team:"npcrc"}

execute facing entity @p eyes run tp @e[tag=!discarded,tag=npcrightclickdetector,sort=nearest,limit=1] ^ ^ ^0.1