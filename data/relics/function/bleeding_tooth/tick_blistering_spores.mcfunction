particle minecraft:crimson_spore ~ ~1 ~ 0 0 0 0 1

scoreboard players add @s blistering_spores 1

execute if predicate relics:release_blistering_spores run function relics:bleeding_tooth/release_blistering_spores