#Generate

#Level number will be a three digit number consisting of stage.level.route.
#This is consistent with the naming convention of the structure files

#Bedrock box
function tunnel:enter/darkroom

#Tunnel beginning
setblock 2848 22 2736 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_beginning"}
setblock 2848 23 2736 minecraft:redstone_block
#Tunnel end
setblock 2856 22 2779 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_end"}
setblock 2856 23 2779 minecraft:redstone_block

#Tunnel man cave: 2830 22 2758
#Main tunnel: 2848 22 2768
#Disc 11: 2848 22 2762

execute if score CurrentLevel Tunnel matches 10 run function tunnel:intermission/generate
execute if score CurrentLevel Tunnel matches 110..161 run function tunnel:stage1/generate
execute if score CurrentLevel Tunnel matches 210..261 run function tunnel:stage2/generate
execute if score CurrentLevel Tunnel matches 310..361 run function tunnel:stage3/generate
execute if score CurrentLevel Tunnel matches 410 run function tunnel:stage4/generate
execute if score CurrentLevel Tunnel matches 420 run function tunnel:stage4/disc11
execute if score CurrentLevel Tunnel matches 500 run function tunnel:mancave/generate

#Debug: make barrier blocks more visible
#fill 2865 23 2759 2848 44 2787 minecraft:white_stained_glass replace minecraft:barrier

#Track time
execute unless score TunnelComplete Tunnel matches 1.. run schedule function tunnel:enter/tracktime 1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/generate' as: "},{"selector":"@s"}]