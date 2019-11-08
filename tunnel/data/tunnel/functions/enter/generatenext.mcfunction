#Evaluate current level, then generate next level

execute in the_end run function tunnel:exit/evaluate
execute in the_end run function tunnel:enter/generate
scoreboard players set @s TunnelOccupant 1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/generatenext' as: "},{"selector":"@s"}]
