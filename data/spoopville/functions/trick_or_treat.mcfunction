# grant advancement
advancement grant @p only spoopville:trick_or_treat

# roll loot
loot spawn ~ ~1 ~ loot spoopville:trick_or_treat

# play sound 
execute as @a at @s run playsound entity.vex.charge player @s ~ ~ ~ 2 0.5

# remove spoop
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold",tag:{display:{Name:"{\"italic\":false,\"translate\":\"item.minecraft.spoop\"}"},CustomModelData:800}}},distance=..2,limit=1]