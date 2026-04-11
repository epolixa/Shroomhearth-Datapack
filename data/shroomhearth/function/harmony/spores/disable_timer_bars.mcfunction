# Toggle the player's ability to view favor status bossbars

# Enable it
scoreboard players set @s show_timer_bars 0

# Inform player
tellraw @s [{"translate":"harmony.timer_bars.disabled"}]