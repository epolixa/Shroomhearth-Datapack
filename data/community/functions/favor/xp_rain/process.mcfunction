# tick value
scoreboard players remove favXPRain shroomhearth 1

# summon xp rain around players
execute as @a[predicate=porcelain:in_overworld] at @s run summon minecraft:experience_orb ~ 320 ~ {Tags:["xp_rain","xp_rain_reposition"],Value:1}

# reposition orbs
schedule function community:favor/xp_rain/reposition_xp_rain_drops 10t

# update bossbar
execute store result bossbar community:favor/xp_rain value run scoreboard players get favXPRain shroomhearth
bossbar set community:favor/xp_rain players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favXPRain shroomhearth matches ..0 run function community:favor/xp_rain/deactivate