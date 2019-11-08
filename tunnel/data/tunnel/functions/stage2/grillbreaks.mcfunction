playsound minecraft:entity.wither.break_block voice @a 2851 36 2774
data merge block 2851 41 2774 {Items:[]}
setblock 2851 40 2774 air
summon minecraft:falling_block 2851 41 2774 {DropItem:0b,Motion:[0.0, -0.5, 0.0],Time:585,BlockState:{Name:"minecraft:barrel"}}

schedule function tunnel:stage2/grillbreaks1 15

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/grillbreaks' as: "},{"selector":"@s"}]