#Unlock next stage

execute if score MaxLevel Tunnel matches 161.. run scoreboard players set Unlocked Tunnel 2
execute if score MaxLevel Tunnel matches 251.. run scoreboard players set Unlocked Tunnel 3
scoreboard players set CurrentLevel Tunnel 110
scoreboard players set NextLevel Tunnel 110

scoreboard players set Intermission Tunnel 0
tellraw @a[team=Admins] {"text":"New tunnel stage unlocked","italic":"true","color":"gray"}

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:intermission/unlock' as: "},{"selector":"@s"}]