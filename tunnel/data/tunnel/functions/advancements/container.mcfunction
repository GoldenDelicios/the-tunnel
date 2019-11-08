#Check containers, if tunnel is occupied

#Stage 2:
#	Detect if chest over grill is weighted
execute in the_end if block 2851 41 2774 chest{Items:[{id:"minecraft:damaged_anvil"}]} run function tunnel:stage2/grillbreaks

#Stage 4:
#	Detect if jukebox has disc 11
execute in the_end if block 2871 25 2756 minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11",Count:1b}} run function tunnel:stage4/disc11

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:advancements/container' as: "},{"selector":"@s"}]