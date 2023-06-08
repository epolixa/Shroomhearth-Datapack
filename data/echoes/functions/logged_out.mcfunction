# Runs from the context of an echo marker that could not find its matching player
# Ideally means the actual matching player has logged out, and we should create an echoes armor stand for them

tellraw @a[tag=debugger] [{"text":"Echo Marker could not find Player... Summoning Echoes"}]

# Create the new echoes
summon armor_stand ~ ~ ~ {Tags:["echoes"],Marker:1b}

# Inherit player UUID from echo marker
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID1 = @s UUID1
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID2 = @s UUID2
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID3 = @s UUID3
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID4 = @s UUID4

# Set positional data from echo marker
data modify entity @e[tag=echoes,sort=nearest,limit=1] Pos set from entity @s data.echoesPos
data modify entity @e[tag=echoes,sort=nearest,limit=1] Dimension set from entity @s data.echoesDim

# Kill the echo marker
kill @s