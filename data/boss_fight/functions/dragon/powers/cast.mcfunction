# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# set lcg
scoreboard players set lcgModulus bityard 8
function bityard:lcg/random

# run a random power...

# summon mobs - more common until low health, much more common at high health
execute as @s[scores={bossHealth=2..60}] if score lcg bityard matches 0 run function boss_fight:dragon/powers/summon
execute as @s[scores={bossHealth=61..180}] if score lcg bityard matches 0..1 run function boss_fight:dragon/powers/summon
execute as @s[scores={bossHealth=181..199}] if score lcg bityard matches 0..2 run function boss_fight:dragon/powers/summon

# apply effects - more common at medium health
execute as @s[scores={bossHealth=2..60}] if score lcg bityard matches 1 run function boss_fight:dragon/powers/distort
execute as @s[scores={bossHealth=61..180}] if score lcg bityard matches 2..3 run function boss_fight:dragon/powers/distort
execute as @s[scores={bossHealth=181..199}] if score lcg bityard matches 3 run function boss_fight:dragon/powers/distort

# restore crystal - much more common at low health
execute as @s[scores={bossHealth=2..60}] if score lcg bityard matches 2..4 run function boss_fight:dragon/powers/restore
execute as @s[scores={bossHealth=61..199}] if score lcg bityard matches 4 run function boss_fight:dragon/powers/restore

# warp players - always uncommon
execute if score lcg bityard matches 5 run function boss_fight:dragon/powers/warp

# summon lighting - always uncommon
execute if score lcg bityard matches 6 run function boss_fight:dragon/powers/strike

# create pillars - always uncommon
execute if score lcg bityard matches 7 run function boss_fight:dragon/powers/pillar

# transmute blocks - always uncommon
# disabling this for now, may revisit when end has some kind of hazard block
#execute if score lcg bityard matches 8 run function boss_fight:dragon/powers/transmute

# unset lcg
scoreboard players set lcg bityard -1

# reset powerCooldown
scoreboard players set @s powerCooldown 0