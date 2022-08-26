advancement revoke @s only tphome:use_origin_stone

kill @e[type=minecraft:eye_of_ender,limit=1,sort=nearest,nbt={Item:{tag:{CustomModelData:1,HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}]

tellraw @s "used origin stone"