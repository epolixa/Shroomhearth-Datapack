# send message
tellraw @s[advancements={wilderness:outside_wilderness=true}] {"translate":"wilderness.entering","hover_event":{"action":"show_text","value":{"translate":"wilderness.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={wilderness:outside_wilderness=true}] only wilderness:outside_wilderness