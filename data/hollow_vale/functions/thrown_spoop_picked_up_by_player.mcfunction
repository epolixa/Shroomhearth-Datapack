# when a player picks up a spoop, with context of player who threw it...

# look for nearest other player with spoop_picked_up score, only run if hollow_vale enabled
execute if score hollow_vale bityard matches 1 as @p[scores={pick_up_spoop=1..},distance=1..] at @s run function hollow_vale:play_spoop

# revoke trigger
advancement revoke @s only hollow_vale:thrown_spoop_picked_up_by_player