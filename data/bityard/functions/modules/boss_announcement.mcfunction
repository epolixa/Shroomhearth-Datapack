################################################################
# Boss Announcements
# announce when a boss mob is summoned and destroyed
################################################################

# set scores
execute as @a[scores={killWither=1..}] run scoreboard players set @s killWither 0
execute as @a[scores={killDragon=1..}] run scoreboard players set @s killDragon 0

# announce summoning of ender dragon when entityTicks is 1 including closest player
execute as @e[type=minecraft:ender_dragon, scores={entityTicks=1}] at @s run tellraw @a ["The Ender Dragon was summoned by ", {"selector": "@p"}]

# announce death of ender dragon when its DeathTime is 1 including closest player
execute as @a[scores={killDragon=1}] run tellraw @a ["The Ender Dragon was slain by ", {"selector": "@s"}]

# announce death of wither
execute as @e[type=minecraft:wither, scores={entityTicks=1}] at @s run tellraw @a ["A Wither was summoned by ", {"selector": "@p"}]
execute as @a[scores={killWither=1}] run tellraw @a ["A Wither was slain by ", {"selector": "@s"}]