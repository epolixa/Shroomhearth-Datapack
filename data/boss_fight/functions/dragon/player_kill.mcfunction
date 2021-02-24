# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# set dragonSlain
scoreboard players set bityard dragonSlain 1

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# capture number of summon markers
execute store result score bityard summonMarkers if entity @e[type=minecraft:armor_stand,tag=summon_marker]

# kill summon markers
kill @e[type=minecraft:armor_stand,tag=summon_marker]

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#boss_fight:slimes,tag=dragon_summon] run data merge entity @s {Size:0b}

# kill all dragon summons
kill @e[tag=dragon_summon]

# setblock dragon egg at pedestal
setblock 0 64 0 minecraft:dragon_egg

# grant all players in range with dragon buff
execute positioned 0 64 0 as @a[distance=..200] run function boss_fight:dragon/buff_players

# grant endchantments for all players in range to equipment in priority: mainhand, offhand, helmet, chestplate, leggings, boots
execute positioned 0 64 0 as @a[distance=..200] run function boss_fight:endchant/attune

# grant solo kill advancement
execute unless entity @p[distance=1..] if score @s dragonDeaths matches 0 if score bityard summonMarkers matches ..2 run advancement grant @s only boss_fight:dragon/legendary_battle

# remove all summoned crying obsidian
execute positioned 0 64 0 run fill ~ ~-6 ~ ~40 ~10 ~40 minecraft:air replace minecraft:crying_obsidian
execute positioned 0 64 0 run fill ~ ~-6 ~ ~40 ~10 ~-40 minecraft:air replace minecraft:crying_obsidian
execute positioned 0 64 0 run fill ~ ~-6 ~ ~-40 ~10 ~40 minecraft:air replace minecraft:crying_obsidian
execute positioned 0 64 0 run fill ~ ~-6 ~ ~-40 ~10 ~-40 minecraft:air replace minecraft:crying_obsidian

# revoke advancement
advancement revoke @s only boss_fight:dragon/player_kill