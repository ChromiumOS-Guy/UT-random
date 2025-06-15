# UT-random
random repository of handy UT commands with obscure documentation, if you're name is here and you'd like to take it down DM me on telegram or open an issue.

## CB (Cell BroadCast):
(courtesy of @lduboeuf in @ubports_devel telegram group)
* get channels
  ```
  Get properties: dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.GetProperties 
  ```
* set channels
  ```
  Set Topics: dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.SetProperty string:'Topics' variant:string:'4371-4380,4396'
  ```
