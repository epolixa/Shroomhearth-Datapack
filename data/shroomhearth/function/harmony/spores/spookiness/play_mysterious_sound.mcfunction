# Executor: An afk player that is going to play a spooky sound 
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/play_mysterious_sound] Playing a mysterious sound near AFK player "},{"selector":"@p"}]

# Tag self
tag @s add spores_of_spookiness_mysterious_sound

# Spread marker
spreadplayers ~ ~ 1 8 false @s

# Play random sound at marker that only this player can hear
execute store result score random shroomhearth run random value 0..34
execute if score random shroomhearth matches 0 at @s run playsound minecraft:entity.blaze.ambient hostile @p
execute if score random shroomhearth matches 1 at @s run playsound minecraft:entity.bogged.ambient hostile @p
execute if score random shroomhearth matches 2 at @s run playsound minecraft:entity.breeze.idle_ground hostile @p
execute if score random shroomhearth matches 3 at @s run playsound minecraft:entity.creaking.ambient hostile @p
execute if score random shroomhearth matches 4 at @s run playsound minecraft:entity.creeper.primed hostile @p
execute if score random shroomhearth matches 5 at @s run playsound minecraft:entity.elder_guardian.ambient hostile @p
execute if score random shroomhearth matches 6 at @s run playsound minecraft:entity.ender_dragon.ambient hostile @p
execute if score random shroomhearth matches 7 at @s run playsound minecraft:entity.endermite.ambient hostile @p
execute if score random shroomhearth matches 8 at @s run playsound minecraft:entity.evoker.ambient hostile @p
execute if score random shroomhearth matches 9 at @s run playsound minecraft:entity.ghast.warn hostile @p
execute if score random shroomhearth matches 10 at @s run playsound minecraft:entity.guardian.ambient hostile @p
execute if score random shroomhearth matches 11 at @s run playsound minecraft:entity.hoglin.angry hostile @p
execute if score random shroomhearth matches 12 at @s run playsound minecraft:entity.husk.ambient hostile @p
execute if score random shroomhearth matches 13 at @s run playsound minecraft:entity.magma_cube.jump hostile @p
execute if score random shroomhearth matches 14 at @s run playsound minecraft:entity.parched.ambient hostile @p
execute if score random shroomhearth matches 15 at @s run playsound minecraft:entity.phantom.swoop hostile @p
execute if score random shroomhearth matches 16 at @s run playsound minecraft:entity.piglin_brute.angry hostile @p
execute if score random shroomhearth matches 17 at @s run playsound minecraft:entity.pillager.ambient hostile @p
execute if score random shroomhearth matches 18 at @s run playsound minecraft:entity.ravager.roar hostile @p
execute if score random shroomhearth matches 19 at @s run playsound minecraft:entity.shulker.ambient hostile @p
execute if score random shroomhearth matches 20 at @s run playsound minecraft:entity.silverfish.ambient hostile @p
execute if score random shroomhearth matches 21 at @s run playsound minecraft:entity.skeleton.ambient hostile @p
execute if score random shroomhearth matches 22 at @s run playsound minecraft:entity.slime.jump hostile @p
execute if score random shroomhearth matches 23 at @s run playsound minecraft:entity.spider.ambient hostile @p
execute if score random shroomhearth matches 24 at @s run playsound minecraft:entity.stray.ambient hostile @p
execute if score random shroomhearth matches 25 at @s run playsound minecraft:entity.vex.charge hostile @p
execute if score random shroomhearth matches 26 at @s run playsound minecraft:entity.vindicator.ambient hostile @p
execute if score random shroomhearth matches 27 at @s run playsound minecraft:entity.warden.angry hostile @p
execute if score random shroomhearth matches 28 at @s run playsound minecraft:entity.witch.ambient hostile @p
execute if score random shroomhearth matches 29 at @s run playsound minecraft:entity.wither.ambient hostile @p
execute if score random shroomhearth matches 30 at @s run playsound minecraft:entity.wither_skeleton.ambient hostile @p
execute if score random shroomhearth matches 31 at @s run playsound minecraft:entity.zoglin.angry hostile @p
execute if score random shroomhearth matches 32 at @s run playsound minecraft:entity.zombie.ambient hostile @p
execute if score random shroomhearth matches 33 at @s run playsound minecraft:entity.zombie_horse.angry hostile @p
execute if score random shroomhearth matches 34 at @s run playsound minecraft:entity.zombie_villager.ambient hostile @p
scoreboard players set random shroomhearth -1

# Kill marker
kill @s
