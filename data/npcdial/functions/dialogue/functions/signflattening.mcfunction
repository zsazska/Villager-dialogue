setblock ~ ~ ~ oak_sign
data modify block ~ ~ ~ Text1 set from entity @s Inventory[1].tag.pages[0]
data modify entity @s CustomName set from block ~ ~ ~ Text1
setblock ~ ~ ~ air