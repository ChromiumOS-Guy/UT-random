# UT-random
random repository of handy UT commands with obscure documentation 

# CT (Cell BroadCast):
(courtesy of @lduboeuf in @ubports_devel telegram group
get channels
```
Get properties: dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.GetProperties 
```
set channels
```
Set Topics: dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.SetProperty string:'Topics' variant:string:'4371-4380,4396'
```
