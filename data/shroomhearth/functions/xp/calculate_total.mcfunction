# https://minecraft.fandom.com/wiki/Experience#Experience_orbs

# Preset level query
execute store result score xpLevel shroomhearth run xp query @s levels
tellraw @s [{"text":"Current XP level: "},{"score":{"name":"xpLevel","objective":"shroomhearth"}}]

# Total experience =
# level^2 + 6 × level (at levels 0–16)
execute as @s[level=0..16] run function shroomhearth:xp/calc_0_to_16
# 2.5 × level^2 – 40.5 × level + 360 (at levels 17–31)
execute as @s[level=17..31] run function shroomhearth:xp/calc_17_to_31
# 4.5 × level^2 – 162.5 × level + 2220 (at levels 32+)
execute as @s[level=32..] run function shroomhearth:xp/calc_32_plus

# Add remaining points
execute store result score xpPoints shroomhearth run xp query @s points
tellraw @s [{"text":"Current XP points: "},{"score":{"name":"xpPoints","objective":"shroomhearth"}}]
scoreboard players operation xpTotal shroomhearth += xpPoints shroomhearth
tellraw @s [{"text":"Calculated total XP: "},{"score":{"name":"xpTotal","objective":"shroomhearth"}}]

