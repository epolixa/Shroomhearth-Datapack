# tag nearest horse
tag @e[type=minecraft:horse,limit=1,sort=nearest] add old_horse

# summon zombie horse at old horse
execute at @e[tag=old_horse] run summon zombie_horse ~ ~ ~ {Tags:["new_horse"]}

# merge nbt from old horse to zombie horse
data modify entity @e[tag=new_horse,limit=1] Owner set from entity @e[tag=old_horse,limit=1] Owner
data modify entity @e[tag=new_horse,limit=1] CustomName set from entity @e[tag=old_horse,limit=1] CustomName
data modify entity @e[tag=new_horse,limit=1] Tame set value 1b
data modify entity @e[tag=new_horse,limit=1] Attributes set from entity @e[tag=old_horse,limit=1] Attributes

# instakill old horse
data merge entity @e[tag=old_horse,limit=1] {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true}
kill @e[tag=old_horse]

# play conversion sound
execute at @e[tag=new_horse] run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1.4

# untag zombie horse
tag @e[tag=new_horse] remove new_horse