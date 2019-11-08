#Load 1.3.0

setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_1.3.0"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 130
scoreboard players set NextLevel Tunnel 140

schedule function tunnel:stage1/buttonladder 10
schedule function tunnel:stage1/buttonwater 10
schedule function tunnel:stage1/buttonshriek 10
schedule function tunnel:stage1/buttonshriekpresent 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/level3' as: "},{"selector":"@s"}]
