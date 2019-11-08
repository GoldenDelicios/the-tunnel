#On player entrance

#Alternative entrance location
execute if score CurrentLevel Tunnel matches 420 run tp @s 2859 33 2770 0 0

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/entrance' as: "},{"selector":"@s"}]
