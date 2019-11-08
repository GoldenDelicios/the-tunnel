kill @e[type=tnt_minecart,tag=TunnelTNTCart]

tag @a[scores={TunnelOccupant=1..}] add TunnelTnt
function tunnel:exit/kickall
execute as @a[tag=TunnelTnt] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 1 0.75 1
tag @a remove TunnelTnt

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/tntcart1' as: "},{"selector":"@s"}]