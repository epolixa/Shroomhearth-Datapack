# pop off any existing item in player's head slot
loot spawn ~ ~1.875 ~ loot shroomhearth:hearth_island/head_slot_target
data modify entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id:"head_slot_target"}}}}] Item set from entity @s equipment.head

# copy the SelectedItem to the player's head slot
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air

# play sound
playsound minecraft:item.armor.equip_generic player @a ~ ~ ~

# grant advancement
advancement grant @s only shroomhearth:hearth_island/haberdasher/haberdasher