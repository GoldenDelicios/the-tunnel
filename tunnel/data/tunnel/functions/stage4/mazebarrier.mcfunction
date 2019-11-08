#Maze barrier

execute in the_end as @a[x=2859,y=25,z=2741,dy=0] run function tunnel:stage4/mazewarp
execute in the_end as @a[x=2854,y=25,z=2746,dy=0] run function tunnel:stage4/mazewarp
execute in the_end as @a[x=2854,y=25,z=2751,dy=0] run function tunnel:stage4/mazewarp
execute in the_end as @a[x=2864,y=25,z=2746,dy=0] run function tunnel:stage4/mazewarp
execute in the_end as @a[x=2859,y=25,z=2756,dy=0] run function tunnel:stage4/mazewarp
execute in the_end as @a[x=2864,y=25,z=2761,dy=0] run function tunnel:stage4/mazewarp

execute in the_end if entity @a[x=2870,y=25,z=2756,dy=0] unless score MazeComplete Tunnel matches 1 run function tunnel:stage4/mazecomplete
execute if score CurrentLevel Tunnel matches 410 run schedule function tunnel:stage4/mazebarrier 1

#Verbosity
tellraw @a[tag=TunnelDebug] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/mazebarrier' as: "},{"selector":"@s"}]
