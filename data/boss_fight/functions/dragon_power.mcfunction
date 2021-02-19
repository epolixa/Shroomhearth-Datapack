# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# set lcg
scoreboard players set bityard lcgModulus 7
function bityard:lcg/random

# run a random power...

# summon mobs - more common until low health, much more common at high health
execute as @s[scores={bossHealth=2..40}] if score bityard lcg matches 0 run function boss_fight:dragon_summon_mobs
execute as @s[scores={bossHealth=41..160}] if score bityard lcg matches 0..1 run function boss_fight:dragon_summon_mobs
execute as @s[scores={bossHealth=161..199}] if score bityard lcg matches 0..2 run function boss_fight:dragon_summon_mobs

# apply effects - more common at medium health
execute as @s[scores={bossHealth=2..40}] if score bityard lcg matches 1 run function boss_fight:dragon_apply_effects
execute as @s[scores={bossHealth=41..160}] if score bityard lcg matches 2..3 run function boss_fight:dragon_apply_effects
execute as @s[scores={bossHealth=161..199}] if score bityard lcg matches 3 run function boss_fight:dragon_apply_effects

# restore crystal - much more common at low health
execute as @s[scores={bossHealth=2..40}] if score bityard lcg matches 2..4 run function boss_fight:dragon_restore_crystal
execute as @s[scores={bossHealth=41..199}] if score bityard lcg matches 4 run function boss_fight:dragon_restore_crystal

# warp players - always uncommon
execute if score bityard lcg matches 5 run function boss_fight:dragon_warp_players

# summon lighting - always uncommon
execute if score bityard lcg matches 6 run function boss_fight:dragon_summon_lightning

# unset lcg
scoreboard players set bityard lcg -1

# reset powerCooldown
scoreboard players set @s powerCooldown 0