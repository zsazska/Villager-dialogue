data modify storage npcdial temp set from entity @s Inventory[1].tag.pages

data modify storage npcdial temp append value ''

data modify storage npcdial temp[-1] set from storage npcdial temp[0]

data remove storage npcdial temp[0]