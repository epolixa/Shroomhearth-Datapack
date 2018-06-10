################################################################
# Everlasting Cookie
# script for everlasting cookie
################################################################

# Check if holding cookie
execute as @a[nbt={SelectedItem:{tag: {relic: "everlasting_cookie"}}}] run scoreboard players set @s everCookie 2

# Give player new cookie when eaten
execute as @a[scores={everCookie=1..,ateCookie=1..}] at @s run summon minecraft:item ~ ~0.9 ~ {Item:{Count:1b, id:"minecraft:cookie", tag:{relic: "everlasting_cookie", Enchantments:[{id:"null"}], display:{Name: "{\"text\":\"Everlasting Cookie\"}", Lore: ["When eaten:"," +1 Everlasting Cookie"]}}}}

# Reset ate cookie flag
execute as @a[scores={ateCookie=1..}] run scoreboard players set @s ateCookie 0

# Reset held cookie flag with 1 tick delay
execute as @a[scores={everCookie=1..}] run scoreboard players remove @s everCookie 1