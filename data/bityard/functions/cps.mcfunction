# capture number of commands ran
execute store result storage bityard cps int 1 run function bityard:second

# re-schedule
schedule function bityard:cps 1s