# play effects
#particle minecraft:soul_fire_flame ~ ~1 ~ 3 1 3 0 20 force

# summon wither skeletons - more common until low health, much more common at high health
function boss_fight:wither/powers/summon

# reset powerCooldown
scoreboard players set @s powerCooldown 0