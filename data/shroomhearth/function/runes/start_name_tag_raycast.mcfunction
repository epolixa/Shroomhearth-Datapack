# Executor: A player that just interacted with a mob with a name tag
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/start_name_tag_raycast] starting raycast from "},{"selector":"@s"}]

# Raycast will increment 0.0625 each step. Set to 48 in survival mode for max entity in of 3 blocks and 80 in creative mode for max reach of 
execute as @s[gamemode=creative] run scoreboard players set raycast_steps shroomhearth 80
execute as @s[gamemode=!creative] run scoreboard players set raycast_steps shroomhearth 48
function shroomhearth:runes/name_tag_raycast
