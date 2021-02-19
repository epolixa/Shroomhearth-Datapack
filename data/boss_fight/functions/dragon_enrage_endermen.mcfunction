# MC-188506 :(

# play sound
playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 12 0.5

# enrage endermen
execute positioned 0 64 0 as @e[type=minecraft:enderman,distance=..200] run function boss_fight:enrage_enderman