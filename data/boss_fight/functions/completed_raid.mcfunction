# check cooldown
execute if score @s timeSinceLastRaidEnd matches 48000.. run function boss_fight:announce_completed_raid

# revoke
advancement revoke @s only boss_fight:completed_raid