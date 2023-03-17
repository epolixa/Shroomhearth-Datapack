# wither team
team remove wither
team add wither "Wither"
team modify wither color dark_gray
team modify wither prefix "Wither's "
team modify wither friendlyFire false
team modify wither collisionRule pushOtherTeams

# bossHealth - tracks wither's health (also used by dragon)
scoreboard objectives add bossHealth dummy

# summonedSkeletons - track if the wither summoned skeletons yet
scoreboard objectives add summonedSkeletons dummy