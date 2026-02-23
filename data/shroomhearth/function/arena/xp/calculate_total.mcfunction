# https://minecraft.fandom.com/wiki/Experience#Experience_orbs

# Preset level query
execute store result score xp_level shroomhearth.arena run xp query @s levels
#tellraw @s [{"text":"Current XP level: "},{"score":{"name":"xp_level","objective":"shroomhearth.arena"}}]

# Total experience =
# level^2 + 6 × level (at levels 0–16)
execute as @s[level=0..16] run function shroomhearth:xp/calc_0_to_16
# 2.5 × level^2 – 40.5 × level + 360 (at levels 17–31)
execute as @s[level=17..31] run function shroomhearth:xp/calc_17_to_31
# 4.5 × level^2 – 162.5 × level + 2220 (at levels 32+)
execute as @s[level=32..] run function shroomhearth:xp/calc_32_plus

# Add remaining points
execute store result score xp_points shroomhearth.arena run xp query @s points
#tellraw @s [{"text":"Current XP points: "},{"score":{"name":"xp_points","objective":"shroomhearth.arena"}}]
scoreboard players operation xp_total shroomhearth.arena += xp_points shroomhearth.arena
#tellraw @s [{"text":"Calculated total XP: "},{"score":{"name":"xp_total","objective":"shroomhearth.arena"}}]

