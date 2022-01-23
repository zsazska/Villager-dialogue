data merge entity @s {CustomNameVisible:0b}
data remove entity @s CustomName

function npcdial:discardrightclick


item replace entity @s villager.0 with air
item replace entity @s villager.1 with air
item replace entity @s villager.2 with air
item replace entity @s villager.3 with air
item replace entity @s villager.4 with air
item replace entity @s villager.5 with air
item replace entity @s villager.6 with air
item replace entity @s villager.7 with air

tellraw @p {"text":"Dialogue removed","color":"dark_red"}

