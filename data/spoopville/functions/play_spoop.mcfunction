# set lcg
scoreboard players set lcgModulus shroomhearth 16
function shroomhearth:lcg/random

# play random sound on player
execute if score lcg shroomhearth matches 0 run playsound entity.creeper.primed player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 1 run playsound entity.enderman.scream player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 2 run playsound entity.ghast.hurt player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 3 run playsound entity.piglin_brute.angry player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 4 run playsound entity.shulker.ambient player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 5 run playsound entity.zombified_piglin.angry player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 6 run playsound entity.blaze.ambient player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 7 run playsound entity.hoglin.angry player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 8 run playsound entity.piglin.angry player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 9 run playsound entity.phantom.bite player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 10 run playsound entity.ravager.roar player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 11 run playsound entity.vex.charge player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 12 run playsound entity.wolf.growl player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 13 run playsound entity.zoglin.angry player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 14 run playsound entity.ender_dragon.growl player @s ~ ~ ~ 2 1.1
execute if score lcg shroomhearth matches 15 run playsound entity.wither.ambient player @s ~ ~ ~ 2 1.1

# unset lcg
scoreboard players set lcg shroomhearth -1

# reset score
scoreboard players reset @s pick_up_spoop