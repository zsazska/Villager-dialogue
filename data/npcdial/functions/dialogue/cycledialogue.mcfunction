data merge entity @s {CustomNameVisible:1b}

function npcdial:dialogue/functions/cmdcheck

execute if score $cmd dialrc matches 1 positioned ~ ~2 ~ run function npcdial:dialogue/functions/signflattening

execute if score $cmd dialrc matches 1 if entity @s[nbt={Inventory:[{tag:{Loop:1b}}]}] run function npcdial:dialogue/functions/goforwardloop
execute if score $cmd dialrc matches 1 if entity @s[nbt={Inventory:[{tag:{Loop:0b}}]}] run function npcdial:dialogue/functions/goforwardnoloop

execute if score $cmd dialrc matches 0 positioned as @e[tag=npcdial,sort=nearest,limit=1] run function npcdial:dialogue/functions/executecmd

item modify entity @s villager.1 npcdial:replacebook

data remove storage npcdial temp
