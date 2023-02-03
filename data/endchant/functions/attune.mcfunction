# mainhand
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/sword run function endchant:mainhand/sword
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/axe run function endchant:mainhand/axe
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/tool run function endchant:mainhand/tool
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/bow run function endchant:mainhand/bow
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/crossbow run function endchant:mainhand/crossbow
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/trident run function endchant:mainhand/trident
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/fishing_rod run function endchant:mainhand/fishing_rod
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/shears run function endchant:mainhand/shears
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/generic run function endchant:mainhand/generic
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/helmet run function endchant:mainhand/helmet
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/chestplate run function endchant:mainhand/chestplate
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/leggings run function endchant:mainhand/leggings
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/mainhand if predicate endchant:equipped/mainhand/boots run function endchant:mainhand/boots

# offhand
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/sword run function endchant:offhand/sword
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/axe run function endchant:offhand/axe
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/tool run function endchant:offhand/tool
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/bow run function endchant:offhand/bow
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/crossbow run function endchant:offhand/crossbow
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/trident run function endchant:offhand/trident
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/fishing_rod run function endchant:offhand/fishing_rod
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/shears run function endchant:offhand/shears
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/generic run function endchant:offhand/generic
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/helmet run function endchant:offhand/helmet
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/chestplate run function endchant:offhand/chestplate
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/leggings run function endchant:offhand/leggings
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/offhand if predicate endchant:equipped/offhand/boots run function endchant:offhand/boots

# head
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/head if predicate endchant:equipped/head/helmet run function endchant:head/helmet

# chest
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/chest if predicate endchant:equipped/chest/chestplate run function endchant:chest/chestplate
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/chest if predicate endchant:equipped/chest/generic run function endchant:chest/generic

# legs
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/legs if predicate endchant:equipped/legs/leggings run function endchant:legs/leggings

# feet
execute unless entity @s[tag=endchant] unless predicate endchant:endchanted/feet if predicate endchant:equipped/feet/boots run function endchant:feet/boots

# remove tag
tag @s remove endchant