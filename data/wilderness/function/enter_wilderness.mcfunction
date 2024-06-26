# send message
tellraw @s[advancements={wilderness:outside_wilderness=true}] {"translate":"wilderness.entering","hoverEvent":{"action":"show_text","contents":{"translate":"wilderness.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={wilderness:outside_wilderness=true}] only wilderness:outside_wilderness