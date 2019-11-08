#Complete tunnel

scoreboard players set NextLevel Tunnel 500
scoreboard players set MaxLevel Tunnel 500
scoreboard players set TunnelComplete Tunnel 1
advancement grant @a[scores={TunnelOccupant=1..}] only tunnel:core/traveller
function tunnel:exit/kickall

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/complete' as: "},{"selector":"@s"}]
