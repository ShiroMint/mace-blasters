## SKYREAPERS JOIN/LEAVE
# Join (Sky)reapers Nuevo
tag @a[x=0,predicate=mace-blasters:game.teamsky_place,team=team.lobby] add team.sky.join
tellraw @a[x=0,tag=team.sky.join] {"text":"message.join_sky & message.team.note"}
team join team.sky @a[x=0,tag=team.sky.join]
execute if entity @a[x=0,tag=team.sky.join] run particle minecraft:trial_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:block.note_block.bell ambient @a[x=0,tag=team.sky.join] 0 217 24 1 1.2
tp @a[x=0,tag=team.sky.join] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.sky.join] remove team.sky.join

# Leave (Sky)reapers Nuevo
tag @a[x=0,predicate=mace-blasters:game.teamsky_place,team=team.sky] add team.sky.leave
tellraw @a[x=0,tag=team.sky.leave] {"text":"message.leave_sky"}
team join team.lobby @a[x=0,tag=team.sky.leave]
execute if entity @a[x=0,tag=team.sky.leave] run particle minecraft:trial_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:block.note_block.bell ambient @a[x=0,tag=team.sky.leave] 0 217 24 1 0.6
tp @a[x=0,tag=team.sky.leave] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.sky.leave] remove team.sky.leave

# Betray: From (Sky)reapers to Spark
tag @a[x=0,predicate=mace-blasters:game.teamspark_place,team=team.sky] add team.betray_sky.join
tellraw @a[x=0,tag=team.betray_sky.join] {"text":"message.join.spark & message.betray & message.team.note"}
team join team.spark @a[x=0,tag=team.betray_sky.join]
execute if entity @a[x=0,tag=team.betray_sky.join] run particle minecraft:raid_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:entity.evoker.prepare_wololo ambient @a[x=0,tag=team.betray_sky.join] 0 217 24 1 1.2
tp @a[x=0,tag=team.betray_sky.join] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.betray_sky.join] remove team.betray_sky.join

## SPARKS JOIN/LEAVE
# Join Spark Nuevo
tag @a[x=0,predicate=mace-blasters:game.teamspark_place,team=team.lobby] add team.spark.join
tellraw @a[x=0,tag=team.spark.join] {"text":"message.join_spark & message.team.note"}
team join team.spark @a[x=0,tag=team.spark.join]
execute if entity @a[x=0,tag=team.spark.join] run particle minecraft:raid_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:block.note_block.bell ambient @a[x=0,tag=team.spark.join] 0 217 24 1 1.2
tp @a[x=0,tag=team.spark.join] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.spark.join] remove team.spark.join

# Leave Spark Nuevo
tag @a[x=0,predicate=mace-blasters:game.teamspark_place,team=team.spark] add team.spark.leave
tellraw @a[x=0,tag=team.spark.leave] {"text":"message.leave_spark"}
team join team.lobby @a[x=0,tag=team.spark.leave]
execute if entity @a[x=0,tag=team.spark.leave] run particle minecraft:raid_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:block.note_block.bell ambient @a[x=0,tag=team.spark.leave] 0 217 24 1 0.6
tp @a[x=0,tag=team.spark.leave] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.spark.leave] remove team.spark.leave

# Betray: From Spark to (Sky)reapers
tag @a[x=0,predicate=mace-blasters:game.teamsky_place,team=team.spark] add team.betray_spark.join
tellraw @a[x=0,tag=team.betray_spark.join] {"text":"message.join.sky & message.betray & message.team.note"}
team join team.sky @a[x=0,tag=team.betray_spark.join]
execute if entity @a[x=0,tag=team.betray_spark.join] run particle minecraft:raid_omen 0 217 24 0.5 1 1.5 0.3 15 force
playsound minecraft:entity.evoker.prepare_wololo ambient @a[x=0,tag=team.betray_spark.join] 0 217 24 1 1.2
tp @a[x=0,tag=team.betray_spark.join] @e[x=0,type=marker,tag=marker.lobby_mainisland,limit=1]
tag @a[x=0,tag=team.betray_spark.join] remove team.betray_spark.join