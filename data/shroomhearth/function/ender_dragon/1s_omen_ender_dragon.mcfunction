# Executor: an Omen Ender Dragon every second
# Position: The Omen Ender Dragon

#tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/1s_omen_ender_dragon] Pulsing Omen Ender Dragon..."}]


# Gain passive rage at certain health thresholds
scoreboard players add @s[scores={health_percent=51..75}] rage 1
scoreboard players add @s[scores={health_percent=26..50}] rage 2
scoreboard players add @s[scores={health_percent=0..25}] rage 3

# Update rage bossbar with new value
bossbar set shroomhearth:ender_dragon/dragon_rage max 64
execute store result bossbar shroomhearth:ender_dragon/dragon_rage value run scoreboard players get @s rage

# Update rage bossbar player visibility
bossbar set shroomhearth:ender_dragon/dragon_rage players @a[predicate=shroomhearth:ender_dragon/on_main_end_island]

# Execute powers at max rage while still alive
execute as @s[scores={rage=64..,health=1..}] run function shroomhearth:ender_dragon/powers/cast

# Tick snatch cooldown
execute if score @s snatch_cooldown matches 1.. run scoreboard players remove @s snatch_cooldown 1