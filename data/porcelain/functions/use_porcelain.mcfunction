# calculate nearby porcelains or monsters
execute store result score @s nearbyPorcelain if entity @e[tag=source_anchor,distance=..1.5]
execute store result score @s nearbyMonster if entity @e[type=#porcelain:monsters,distance=..8]

# interrupt recall
execute as @s[tag=recalling] run function recall:interrupted

# relative to player using porcelain in other dimensions
execute if predicate porcelain:use_porcelain_in_other if predicate porcelain:can_use_porcelian run function porcelain:enter_porcelain
execute if predicate porcelain:use_porcelain_in_other unless score @s nearbyPorcelain matches 0 run title @s actionbar {"color":"white","translate":"porcelain.nearby_porcelain","fallback":"You may not enter the Porcelain here, another player's Porcelain is too close"}
execute if predicate porcelain:use_porcelain_in_other unless score @s nearbyMonster matches 0 run title @s actionbar {"color":"white","translate":"porcelain.nearby_monster","fallback":"You may not enter the Porcelain now, there are monsters nearby"}

# activate porcelain item in porcelain
execute if predicate porcelain:use_porcelain_in_porcelain run function porcelain:exit_porcelain

# remove score
scoreboard players reset @s usePorcelain