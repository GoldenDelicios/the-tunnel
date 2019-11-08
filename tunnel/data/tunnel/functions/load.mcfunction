#Load

scoreboard objectives add Hunger food
scoreboard objectives add Tunnel dummy
scoreboard objectives add TunnelOccupant dummy
scoreboard objectives add TunnelLevel dummy
scoreboard objectives add TunnelTime dummy
scoreboard objectives add TunnelLogout minecraft.custom:minecraft.leave_game

function tunnel:chunkload
execute unless score CurrentLevel Tunnel matches 10.. run function tunnel:restart

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:load' as: "},{"selector":"@s"}]