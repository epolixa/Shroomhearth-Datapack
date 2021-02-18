# set lcg
scoreboard players set bityard lcgModulus 7
function bityard:lcg/random

# run a random power
execute if score bityard lcg matches 0..1 run function boss_fight:dragon_summon_mobs
execute if score bityard lcg matches 2..3 run function boss_fight:dragon_apply_effects
execute if score bityard lcg matches 4 run function boss_fight:dragon_restore_crystal
execute if score bityard lcg matches 5 run function boss_fight:dragon_warp_players
execute if score bityard lcg matches 6 run function boss_fight:dragon_summon_lightning

# reset score
scoreboard players set @s powerCooldown 0