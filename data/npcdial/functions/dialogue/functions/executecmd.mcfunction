execute if entity @s[nbt={Inventory:[{tag:{Loop:1b}}]}] run function npcdial:dialogue/functions/goforwardloop
execute if entity @s[nbt={Inventory:[{tag:{Loop:0b}}]}] run function npcdial:dialogue/functions/goforwardnoloop

item modify entity @s villager.1 npcdial:replacebook



setblock ~ ~1 ~ repeating_command_block[facing=up]{auto:1b}
setblock ~ ~2 ~ chain_command_block[facing=up]{Command:"fill ~ ~ ~ ~ ~-1 ~ air",auto:1b}

data modify block ~ ~1 ~ Command set from entity @s Inventory[1].tag.pages[0]




execute if entity @s[nbt={Inventory:[{tag:{Loop:1b}}]}] run function npcdial:dialogue/functions/goforwardloop
execute if entity @s[nbt={Inventory:[{tag:{Loop:0b}}]}] run function npcdial:dialogue/functions/goforwardnoloop

item modify entity @s villager.1 npcdial:replacebook



