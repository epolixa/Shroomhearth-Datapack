# grant advancement
advancement grant @p only spoopville:trick_or_treat

# roll loot
loot spawn ~ ~ ~ loot spoopville:trick_or_treat

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# remove spoop
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold"}},distance=..2]