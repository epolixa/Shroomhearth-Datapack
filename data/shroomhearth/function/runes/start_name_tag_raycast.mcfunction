# Executor: A player that just interacted with a mob with a name tag
# Position: The player

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/start_name_tag_raycast] starting raycast from "},{"selector":"@s"}]


# https://datapack.wiki/guide/misc/raycasts

# Raycast will increment 0.1 each step. Set to 30 in survival mode for max entity in of 3 blocks and 50 in creative mode for max reach of 5 blocks
tag @s add raycaster
execute as @s[gamemode=creative] run scoreboard players set raycast_steps shroomhearth 50
execute as @s[gamemode=!creative] run scoreboard players set raycast_steps shroomhearth 30
function shroomhearth:runes/name_tag_raycast
tag @s remove raycaster
