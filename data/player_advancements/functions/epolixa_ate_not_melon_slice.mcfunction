# Reset melonEaten score
scoreboard players set @s melonEaten 0

# Revoke trigger advancement if haven't received epolixa
advancement revoke @s[advancements={player_advancements:epolixa_ate_not_melon_slice=true,player_advancements:epolixa=false}] only player_advancements:epolixa_ate_not_melon_slice