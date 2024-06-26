# check cooldown
execute if score @s timeSinceLastRaidEnd matches 48000.. run function pillager_raid:announce_completed

# revoke
advancement revoke @s only pillager_raid:completed