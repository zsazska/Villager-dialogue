scoreboard players enable @a dialogue_gettools
execute as @a[scores={dialogue_gettools=1..}] run function npcdial:gettools
scoreboard players set @a dialogue_gettools 0



execute as @a[nbt={SelectedItem:{tag:{Dial:1b}}},scores={dialrc=1..}] at @s run function npcdial:raycast

execute as @a[nbt={SelectedItem:{tag:{ResetDial:1b}}},scores={dialrc=1..}] at @s run function npcdial:dialogue/resetraycast

execute as @a[nbt={SelectedItem:{tag:{RemoveDial:1b}}},scores={dialrc=1..}] at @s run function npcdial:dialogue/removeraycast

execute as @a[nbt={SelectedItem:{tag:{GetDial:1b}}},scores={dialrc=1..}] at @s run function npcdial:dialogue/viewraycast


execute as @a[scores={dialrc=1..}] at @s unless entity @s[nbt={SelectedItem:{tag:{Dial:1b}}}] run function npcdial:dialogue/dialogueraycast




execute as @e[type=villager] if entity @s[nbt={Inventory:[{tag:{Dial:1b}}]}] run tag @s add npcdial
execute as @e[type=villager] unless entity @s[nbt={Inventory:[{tag:{Dial:1b}}]}] run tag @s remove npcdial

execute as @e[tag=npcdial] at @s if entity @p[distance=..6] run tag @s add inrange
execute as @e[tag=npcdial] at @s unless entity @p[distance=..6] run tag @s remove inrange

execute as @e[tag=!inrange,tag=npcdial] run data merge entity @s {CustomNameVisible:0b}

execute as @e[tag=npcrightclickdetector] at @s as @e[sort=nearest,limit=1,tag=npcdial] if entity @s[tag=!inrange] run function npcdial:discardrightclick

execute as @e[tag=npcdial,tag=inrange] at @s run function npcdial:rightclicknpc

effect give @e[tag=npcrightclickdetector] invisibility 1 1 true





scoreboard players set @a dialrc 0