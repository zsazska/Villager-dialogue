scoreboard players set $cmd dialrc 0

data modify storage npcdial cmdcheck set value "[COMMAND]"

execute store success score $cmd dialrc run data modify storage npcdial cmdcheck set from entity @s Inventory[1].tag.pages[0]

