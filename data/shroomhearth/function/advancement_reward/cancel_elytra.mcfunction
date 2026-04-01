# Executor: A player who started sneaking while gliding with elytra
# Position: The player

# This function is also called from shroomhearth:ender_dragon/dragon_bite_player to cancel elytra flight when bitten by the Omen Ender Dragon

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/cancel_elytra] "},{"selector":"@s"},{"text":" cancelled elytra"}] 

# Apply levitation to stop elytra flight
effect give @s minecraft:levitation 1 0 true

# Tag player to remove levitation after 1 tick
tag @s add cancel_elytra

# Audio cue (disabled for now since there is no vanilla audio cue for starting flight)
#playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 1.75

# Schedule function to remove levitation after 1 tick
schedule function shroomhearth:cancel_elytra_1t 1t

# Revoke trigger advancement
advancement revoke @s only shroomhearth:cancel_elytra