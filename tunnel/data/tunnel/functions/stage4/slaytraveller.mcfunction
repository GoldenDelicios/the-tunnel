#Final scene

execute in the_end run summon minecraft:item 2858 33 2773 {Tags:["TunnelDisc"], Glowing:1b, Item:{id:"minecraft:music_disc_11", Count:1b}, PickupDelay:32767s, Age:5880s, Motion:[0.022d, 0.025d, 0.0d], NoGravity:1b}
schedule function tunnel:stage4/particleexits 120
schedule function tunnel:stage4/complete 200

advancement revoke @s only tunnel:hidden/slaytraveller

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/slaytraveller' as: "},{"selector":"@s"}]
