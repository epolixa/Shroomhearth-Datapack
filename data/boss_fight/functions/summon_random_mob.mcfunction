# set lcg
scoreboard players set bityard lcgModulus 31
function bityard:lcg/random

# summon a random mob
execute if score bityard lcg matches 0 run summon minecraft:zombie 0 64 0
execute if score bityard lcg matches 1 run summon minecraft:zombie_villager 0 64 0
execute if score bityard lcg matches 2 run summon minecraft:husk 0 64 0
execute if score bityard lcg matches 3 run summon minecraft:drowned 0 64 0
execute if score bityard lcg matches 4 run summon minecraft:skeleton 0 64 0
execute if score bityard lcg matches 5 run summon minecraft:stray 0 64 0
execute if score bityard lcg matches 6 run summon minecraft:wither_skeleton 0 64 0
execute if score bityard lcg matches 7 run summon minecraft:creeper 0 64 0
execute if score bityard lcg matches 8 run summon minecraft:spider 0 64 0
execute if score bityard lcg matches 9 run summon minecraft:cave_spider 0 64 0
execute if score bityard lcg matches 10 run summon minecraft:silverfish 0 64 0
execute if score bityard lcg matches 11 run summon minecraft:slime 0 64 0
execute if score bityard lcg matches 12 run summon minecraft:witch 0 64 0
execute if score bityard lcg matches 13 run summon minecraft:vindicator 0 64 0
execute if score bityard lcg matches 14 run summon minecraft:pillager 0 64 0
execute if score bityard lcg matches 15 run summon minecraft:illusioner 0 64 0
execute if score bityard lcg matches 16 run summon minecraft:evoker 0 64 0
execute if score bityard lcg matches 17 run summon minecraft:ravager 0 64 0
execute if score bityard lcg matches 18 run summon minecraft:phantom 0 64 0
execute if score bityard lcg matches 19 run summon minecraft:guardian 0 64 0
execute if score bityard lcg matches 20 run summon minecraft:elder_guardian 0 64 0
execute if score bityard lcg matches 21 run summon minecraft:hoglin 0 64 0
execute if score bityard lcg matches 22 run summon minecraft:zoglin 0 64 0
execute if score bityard lcg matches 23 run summon minecraft:piglin 0 64 0
execute if score bityard lcg matches 24 run summon minecraft:zombified_piglin 0 64 0
execute if score bityard lcg matches 25 run summon minecraft:piglin_brute 0 64 0
execute if score bityard lcg matches 26 run summon minecraft:magma_cube 0 64 0
execute if score bityard lcg matches 27 run summon minecraft:blaze 0 64 0
execute if score bityard lcg matches 28 run summon minecraft:ghast 0 64 0
execute if score bityard lcg matches 29 run summon minecraft:endermite 0 64 0
execute if score bityard lcg matches 30 run summon minecraft:shulker 0 64 0