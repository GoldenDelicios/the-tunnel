#Disc 11

#Clear entities, inventories
execute in minecraft:the_end positioned 2829 21 2735 run kill @e[dx=44,dy=31,dz=52,type=#tunnel:removable]
clear @a[scores={TunnelOccupant=1..}] #tunnel:collectibles

#Generate disc 11 level
setblock 2848 22 2767 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_4.2.0"}
setblock 2848 23 2767 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 420
scoreboard players set NextLevel Tunnel 410
tp @a[scores={TunnelOccupant=1..}] 2859 33 2771 0 0

#Remove disc from jukebox
setblock 2871 25 2756 minecraft:jukebox[has_record=false]

#Schedule particles, traveller
function tunnel:stage4/particleportal
schedule function tunnel:stage4/particletraveller 1180
schedule function tunnel:stage4/summontraveller 1230

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/disc11' as: "},{"selector":"@s"}]