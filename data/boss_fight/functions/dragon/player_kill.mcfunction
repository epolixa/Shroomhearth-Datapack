# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# remove bossbar
bossbar remove boss_fight:dragon_rage

# set dragonSlain
scoreboard players set dragonSlain shroomhearth 1

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# capture number of summon markers
execute store result score shroomhearth summonMarkers if entity @e[type=minecraft:armor_stand,tag=summon_marker]

# kill summon markers
kill @e[type=minecraft:armor_stand,tag=summon_marker]

# fix for slimes that didn't inherit tags
tag @e[type=#boss_fight:slimes,distance=..128] add dragon_summon

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#boss_fight:slimes,tag=dragon_summon] run data merge entity @s {Size:0}

# kill all dragon summons
kill @e[tag=dragon_summon]

# setblock dragon egg at pedestal
execute unless block 0 64 0 minecraft:dragon_egg run setblock 0 64 0 minecraft:dragon_egg

# grant endchantments for all players in range to equipment in priority: mainhand, offhand, helmet, chestplate, leggings, boots
execute positioned 0 64 0 as @a[distance=..128] run function boss_fight:endchant/attune

# grant solo kill advancement
execute unless entity @p[distance=1..] if score @s dragonDeaths matches 0 if score shroomhearth summonMarkers matches ..2 run advancement grant @s only boss_fight:dragon/legendary_battle

# remove all summoned crying obsidian pillars
function boss_fight:dragon/cleanup_pillars

# remove all transmuted blocks
function boss_fight:dragon/cleanup_transmutes

# revoke advancement
advancement revoke @s only boss_fight:dragon/player_kill