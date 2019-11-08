#Check to end intermission

execute if score Intermission Tunnel matches 1 run function tunnel:intermission/unlock

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:intermission/advance' as: "},{"selector":"@s"}]