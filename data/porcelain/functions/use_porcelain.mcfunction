# calculate nearby monsters
execute store result score @s nearbyMonster if entity @e[type=#porcelain:monsters,distance=..8]

# interrupt recall
execute as @s[tag=recalling] run function recall:interrupted

# relative to player using porcelain in other dimensions
execute if predicate porcelain:use_porcelain_in_other if score @s nearbyMonster matches 0 run function porcelain:enter_porcelain
execute if predicate porcelain:use_porcelain_in_other unless score @s nearbyMonster matches 0 run title @s actionbar {"color":"white","translate":"porcelain.porcelain.nearby_monster"}

# activate porcelain item in porcelain
execute if predicate porcelain:use_porcelain_in_porcelain run function porcelain:exit_porcelain

# remove score
scoreboard players reset @s usePorcelain