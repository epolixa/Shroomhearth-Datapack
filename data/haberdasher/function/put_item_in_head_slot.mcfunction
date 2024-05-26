# pop off any existing item in player's head slot
loot spawn ~ ~1.8 ~ loot haberdasher:drop_hat
data modify entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{spore:"head_slot_target"}}}}] Item set from entity @s Inventory[{Slot:103b}]

# copy the SelectedItem to the player's head slot
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air

# play sound
playsound minecraft:item.armor.equip_generic player @a ~ ~ ~

# grant advancement
advancement grant @s only haberdasher:haberdasher