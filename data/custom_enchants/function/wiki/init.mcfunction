schedule function custom_enchants:wiki/init 1s
scoreboard players enable @a custom_enchants.dialog_trigger.wiki

execute as @a[scores={custom_enchants.dialog_trigger.wiki=1..}] run function custom_enchants:wiki/get_entry

scoreboard players set @a custom_enchants.dialog_trigger.wiki 0