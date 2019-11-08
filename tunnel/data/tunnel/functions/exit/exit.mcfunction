#Exit

#Unmark as occupant, teleport to respawn point
scoreboard players set @s TunnelOccupant 0
function tunnel:exit/respawn

#If tunnel is not complete, update personal progress
execute unless score CurrentLevel Tunnel matches 500 run function tunnel:exit/progress

#If unoccupied, evaluate and update level
execute unless entity @a[scores={TunnelOccupant=1..}] in the_end run function tunnel:exit/evaluate

#Revoke advancements
advancement revoke @s only tunnel:hidden/exittunnel
advancement revoke @s only tunnel:hidden/blindleap

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/exit' as: "},{"selector":"@s"}]