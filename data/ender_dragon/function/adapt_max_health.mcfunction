# adapt max health to 200+((N-1)*50)
#scoreboard players set @s bossMaxHealth 50
#scoreboard players operation @s bossMaxHealth *= dragonPlayers shroomhearth
#scoreboard players add @s bossMaxHealth 150
#data modify storage ender_dragon dragon.max_health.Name set value "minecraft:generic.max_health"
#execute store result storage ender_dragon dragon.max_health.Base double 1 run scoreboard players get @s bossMaxHealth
#data modify entity @s Attributes[{"Name":"minecraft:generic.max_health"}] set from storage ender_dragon dragon.max_health


# Adapt max health to 200 + (50 * ominous_level)
scoreboard players set @s bossMaxHealth 50
scoreboard players operation @s bossMaxHealth *= @s ominous_level
scoreboard players add @s bossMaxHealth 200
#data modify storage ender_dragon dragon.max_health.Name set value "minecraft:generic.max_health"
execute store result storage ender_dragon ender_dragon.max_health double 1 run scoreboard players get @s bossMaxHealth
#data modify entity @s attributes[{id:"minecraft:generic.max_health"}] set from storage ender_dragon dragon.max_health

function ender_dragon:set_base_max_health with storage ender_dragon ender_dragon