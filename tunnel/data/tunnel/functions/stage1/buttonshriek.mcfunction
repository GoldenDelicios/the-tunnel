#Check for button press to play ambient cave shriek
execute in the_end if block 2851 41 2772 minecraft:stone_button[powered=true] run playsound minecraft:ambient.cave voice @a 2851 41 2772
execute if entity @a[scores={TunnelOccupant=1..}] in the_end if block 2851 41 2772 minecraft:stone_button[powered=false] run schedule function tunnel:stage1/buttonshriek 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/buttonshriek' as: "},{"selector":"@s"}]
