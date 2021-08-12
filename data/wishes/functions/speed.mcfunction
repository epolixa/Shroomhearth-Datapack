# announce wish
execute as @p run tellraw @a [{"selector":"@s"}, {"color":"white", "text":" wished for "}, {"color":"#7CAFC6","text":"Speed"}]

# grant advancement
advancement grant @p only wishes:upon_a_star

# grant wish
effect give @a minecraft:speed 2400 1 true

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# remove nether star 
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star"}},distance=..2]