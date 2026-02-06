# Executor: Player using The Porcelain item
# Position: the Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/used_porcelain] "},{"selector":"@s"},{"text":" used The Porcelain"}]


# calculate nearby porcelains or monsters
execute store result score @s nearby_porcelain if entity @e[tag=source_anchor,distance=..1.5]
execute store result score @s nearby_monster if entity @e[type=#shroomhearth:sleep_preventing_monsters,distance=..8]

# interrupt recall
#execute as @s[tag=recalling] run function recall:interrupted

# relative to player using porcelain in other dimensions
execute if predicate shroomhearth:porcelain/used_porcelain_in_source_dimension if predicate shroomhearth:porcelain/can_use_porcelain run function shroomhearth:porcelain/enter_porcelain
execute if predicate shroomhearth:porcelain/used_porcelain_in_source_dimension unless score @s nearby_porcelain matches 0 run title @s actionbar {"color":"white","translate":"porcelain.nearby_porcelain","fallback":"You may not enter the Porcelain here, another player's Porcelain is too close"}
execute if predicate shroomhearth:porcelain/used_porcelain_in_source_dimension unless score @s nearby_monster matches 0 run title @s actionbar {"color":"white","translate":"porcelain.nearby_monster","fallback":"You may not enter the Porcelain now, there are monsters nearby"}

# activate porcelain item in porcelain
execute if predicate shroomhearth:porcelain/used_porcelain_in_the_porcelain run function shroomhearth:porcelain/exit_porcelain

# remove score
scoreboard players reset @s used_porcelain