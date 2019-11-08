#Check for button press to release water
execute in the_end if block 2851 41 2774 minecraft:stone_button[powered=true] run function tunnel:stage1/water
execute if entity @a[scores={TunnelOccupant=1..}] in the_end if block 2851 41 2774 minecraft:stone_button[powered=false] run schedule function tunnel:stage1/buttonwater 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/buttonwater' as: "},{"selector":"@s"}]
