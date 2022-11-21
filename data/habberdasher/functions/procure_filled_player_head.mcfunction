# remove one head from player
clear @s #habberdasher:fillable_heads 1

# take 1 xp level from player
execute if entity @s[gamemode=!creative] run xp add @s -1 levels

# play sound
playsound minecraft:block.beehive.exit player @s ~ ~ ~ 1 2

# give the player their head
loot give @s loot habberdasher:player_head

# grant advancement
advancement grant @s only habberdasher:face_painter