#Prevent people from entering the puzzle box illegitimately, re-enter if relogged

#tp @s[nbt={Dimension:1},gamemode=survival] 2849 64 2769
execute as @s[scores={TunnelOccupant=1..,TunnelLogout=1..}] run function tunnel:enter/relog
execute unless score @s TunnelOccupant matches 1.. unless entity @s[gamemode=!adventure,gamemode=!survival] run function tunnel:exit/respawn
advancement revoke @s only tunnel:hidden/denyaccess

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/denyaccess' as: "},{"selector":"@s"}]