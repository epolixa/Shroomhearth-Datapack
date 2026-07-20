# 26.3 introduces Cushions which make the Seats provided by our datapack entirely obselete.
# As such, all Seats functionality has been removed from the datapack.
# This script targets any leftover Seats interaction entities and replaces them with a Cushion.

tellraw @a[tag=debug_repair] [{"text":"[shroomhearth:repair/scripts/replace_seat_with_cushion] Replacing Seat with a Cushion"}]


# Summon a Cushion according to the color of the seat
execute as @s[tag=black_seat] run summon minecraft:cushion ~ ~ ~ {color:"black"}
execute as @s[tag=blue_seat] run summon minecraft:cushion ~ ~ ~ {color:"blue"}
execute as @s[tag=brown_seat] run summon minecraft:cushion ~ ~ ~ {color:"brown"}
execute as @s[tag=cyan_seat] run summon minecraft:cushion ~ ~ ~ {color:"cyan"}
execute as @s[tag=gray_seat] run summon minecraft:cushion ~ ~ ~ {color:"gray"}
execute as @s[tag=green_seat] run summon minecraft:cushion ~ ~ ~ {color:"green"}
execute as @s[tag=light_blue_seat] run summon minecraft:cushion ~ ~ ~ {color:"light_blue"}
execute as @s[tag=light_gray_seat] run summon minecraft:cushion ~ ~ ~ {color:"light_gray"}
execute as @s[tag=lime_seat] run summon minecraft:cushion ~ ~ ~ {color:"lime"}
execute as @s[tag=magenta_seat] run summon minecraft:cushion ~ ~ ~ {color:"magenta"}
execute as @s[tag=orange_seat] run summon minecraft:cushion ~ ~ ~ {color:"orange"}
execute as @s[tag=pink_seat] run summon minecraft:cushion ~ ~ ~ {color:"pink"}
execute as @s[tag=purple_seat] run summon minecraft:cushion ~ ~ ~ {color:"purple"}
execute as @s[tag=red_seat] run summon minecraft:cushion ~ ~ ~ {color:"red"}
execute as @s[tag=white_seat] run summon minecraft:cushion ~ ~ ~ {color:"white"}
execute as @s[tag=yellow_seat] run summon minecraft:cushion ~ ~ ~ {color:"yellow"}

# Remove the Seat interaction entity and attached display entity
execute on passengers run kill @s[tag=seat]
kill @s