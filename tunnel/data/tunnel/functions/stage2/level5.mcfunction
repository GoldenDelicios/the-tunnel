#Load 2.5.0

setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_2.5.0"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 250
scoreboard players set NextLevel Tunnel 260

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/level5' as: "},{"selector":"@s"}]
