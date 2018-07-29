################################################################
# Boss Announcements
# announce when a boss mob is summoned and destroyed
################################################################

# announce summoning of ender dragon when entityTicks is 1 including closest player
execute as @e[type=minecraft:ender_dragon, scores={entityTicks=1}] at @s run tellraw @a ["The Ender Dragon was summoned by ", {"selector": "@p"}]

# announce death of ender dragon when its DeathTime is 1 including closest player
execute as @a[scores={killDragon=1}] run tellraw @a ["The Ender Dragon was slain by ", {"selector": "@s"}]


# wither
execute as @e[type=minecraft:wither, scores={entityTicks=1}] at @s run tellraw @a ["A Wither was summoned by ", {"selector": "@p"}]
execute as @a[scores={killWither=1}] run tellraw @a ["A Wither was slain by ", {"selector": "@s"}]