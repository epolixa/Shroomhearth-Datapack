# remove one head from player
clear @s #haberdasher:fillable_heads 1

# take 1 xp level from player
execute if entity @s[gamemode=!creative] run xp add @s -1 levels

# play sound
playsound minecraft:block.beehive.exit player @a ~ ~ ~ 1 2

# give the player their head
loot give @s loot haberdasher:player_head

# grant advancement
advancement grant @s only haberdasher:face_painter