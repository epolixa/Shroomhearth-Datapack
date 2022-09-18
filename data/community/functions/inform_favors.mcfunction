# Inform players if there are any active favors when logging in

# Tell the player how many active favors there after
execute if score favActive shroomhearth matches 1 run tellraw @s [{"text":"There is "},{"score":{"name":"favActive","objective":"shroomhearth"}},{"text":" active favor"}]
execute if score favActive shroomhearth matches 2.. run tellraw @s [{"text":"There are "},{"score":{"name":"favActive","objective":"shroomhearth"}},{"text":" active favors"}]

# Reset playerLeft
scoreboard players reset @s playerLeft