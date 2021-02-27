# mainhand
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/sword run function boss_fight:endchant/mainhand/sword
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/axe run function boss_fight:endchant/mainhand/axe
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/tool run function boss_fight:endchant/mainhand/tool
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/bow run function boss_fight:endchant/mainhand/bow
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/crossbow run function boss_fight:endchant/mainhand/crossbow
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/trident run function boss_fight:endchant/mainhand/trident
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/fishing_rod run function boss_fight:endchant/mainhand/fishing_rod
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/shears run function boss_fight:endchant/mainhand/shears
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/generic run function boss_fight:endchant/mainhand/generic
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/helmet run function boss_fight:endchant/mainhand/helmet
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/armor run function boss_fight:endchant/mainhand/armor
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/mainhand if predicate boss_fight:equipped/mainhand/boots run function boss_fight:endchant/mainhand/boots

# offhand
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/sword run function boss_fight:endchant/offhand/sword
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/axe run function boss_fight:endchant/offhand/axe
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/tool run function boss_fight:endchant/offhand/tool
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/bow run function boss_fight:endchant/offhand/bow
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/crossbow run function boss_fight:endchant/offhand/crossbow
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/trident run function boss_fight:endchant/offhand/trident
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/fishing_rod run function boss_fight:endchant/offhand/fishing_rod
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/shears run function boss_fight:endchant/offhand/shears
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/generic run function boss_fight:endchant/offhand/generic
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/helmet run function boss_fight:endchant/offhand/helmet
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/armor run function boss_fight:endchant/offhand/armor
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/offhand if predicate boss_fight:equipped/offhand/boots run function boss_fight:endchant/offhand/boots

# head
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/head if predicate boss_fight:equipped/head/helmet run function boss_fight:endchant/head/helmet

# chest
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/chest if predicate boss_fight:equipped/chest/armor run function boss_fight:endchant/chest/armor
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/chest if predicate boss_fight:equipped/chest/generic run function boss_fight:endchant/chest/generic

# legs
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/legs if predicate boss_fight:equipped/legs/armor run function boss_fight:endchant/legs/armor

# feet
execute unless entity @s[tag=endchant] unless predicate boss_fight:endchanted/feet if predicate boss_fight:equipped/feet/boots run function boss_fight:endchant/feet/boots

# remove tag
tag @s remove endchant