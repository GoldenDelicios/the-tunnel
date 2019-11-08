scoreboard players set CurrentLevel Tunnel 131

fill 2857 25 2779 2857 44 2779 minecraft:barrier
setblock 2857 42 2778 minecraft:ladder[facing=south]
playsound minecraft:block.ladder.place voice @a 2857 42 2778

schedule function tunnel:stage1/ladder1 10
schedule function tunnel:stage1/ladder2 20
schedule function tunnel:stage1/ladder3 30
schedule function tunnel:stage1/ladder4 40
schedule function tunnel:stage1/ladder5 50
schedule function tunnel:stage1/ladder6 60
schedule function tunnel:stage1/ladder7 70
schedule function tunnel:stage1/ladder8 80
schedule function tunnel:stage1/ladder9 90
schedule function tunnel:stage1/ladder10 100
schedule function tunnel:stage1/ladder11 110
schedule function tunnel:stage1/ladder12 120
schedule function tunnel:stage1/ladder13 130
schedule function tunnel:stage1/ladder14 140
schedule function tunnel:stage1/ladder15 150
schedule function tunnel:stage1/ladder16 160
schedule function tunnel:stage1/ladder17 170

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/ladder' as: "},{"selector":"@s"}]