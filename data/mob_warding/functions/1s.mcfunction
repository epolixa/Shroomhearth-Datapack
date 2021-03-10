# tag mobs that are safe
# rules for wardable mobs: must be a naturally-spawning hostile mob that is not tied to a structure or other special circumstances
execute positioned ~-50 ~-256 ~-50 unless entity @e[type=minecraft:end_crystal,nbt={ShowBottom:0b},dx=100,dy=306,dz=100] run tag @s add unwardable

# remove wardable mobs
execute as @s[tag=!unwardable] run function mob_warding:ward_mob