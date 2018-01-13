################################################################
# Timers
# increment each timer every tick and check to execute
################################################################\

# Test
scoreboard players add @a testTimer 1
execute as @a if score @s testTimer matches 100.. run scoreboard players set @s testTimer 0

# Community score timers

# Lore item timers


function bityard:solomons_shoes


# Reset player action flags
execute as @a if score @s playerSneak matches 1.. run scoreboard players set @s playerSneak 0

# Reset rng
execute as @a if score @s rng matches 9.. run scoreboard players set @s rng 0 


