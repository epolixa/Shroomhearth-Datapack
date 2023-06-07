tellraw epolixa [{"text":"echo marker tracking "},{"score":{"name":"@s","objective":"UUID1"}},{"text":","},{"score":{"name":"@s","objective":"UUID2"}},{"text":","},{"score":{"name":"@s","objective":"UUID3"}},{"text":","},{"score":{"name":"@s","objective":"UUID4"}}]

particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1

# track matching player
tag @s remove found_player
execute positioned as @a[tag=echo_marked,gamemode=!spectator,sort=nearest] if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 if score @s UUID4 = @p UUID4 run function echoes:update_marker

# if the marker did not find a player this run, convert to echoes armor stand
execute unless entity @s[tag=found_player] run function echoes:logged_out