#Check for button press to drop ladder
execute in the_end if block 2858 39 2776 minecraft:stone_button[powered=true] run function tunnel:stage1/ladder
execute if entity @a[scores={TunnelOccupant=1..}] in the_end if block 2858 39 2776 minecraft:stone_button[powered=false] run schedule function tunnel:stage1/buttonladder 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/buttonladder' as: "},{"selector":"@s"}]
