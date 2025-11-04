# UT-random
random repository of handy UT commands with obscure documentation and some scripts, if you're name is here and you'd like to take it down DM me on telegram or open an issue.

## Cell BroadCast:
(courtesy of @lduboeuf in @ubports_devel telegram group)
* get channels
  ```shell
  dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.GetProperties 
  ```
* set channels
  ```shell
  dbus-send --system --print-reply --dest=org.ofono /ril_0 org.ofono.CellBroadcast.SetProperty string:'Topics' variant:string:'919-928,4352-4354,4356,4370-4380,4383-4392,4396-4397,4400'
  ```

## Lifecycle exemption:
* get exempt appids:
  ```shell
  gsettings get com.canonical.qtmir lifecycle-exempt-appids
  ```
* set exempt appids:
  ```shell
  gsettings set com.canonical.qtmir lifecycle-exempt-appids "['com.example.myapp' , 'music.ubports']"
  ```
[lifecycle exemption implementation of UT Tweak Tool](https://gitlab.com/myii/ut-tweak-tool/-/blob/master/src/plugin/tweaktool/package.cpp#L233)

## Lomiri-URL-Dispatcher:
* test dispatch:
  ```shell
  dbus-send --print-reply --dest=com.lomiri.URLDispatcher /com/lomiri/URLDispatcher com.lomiri.URLDispatcher.DispatchURL string:"http://example.com" string:"appid"
  ```

## Time Format:
see: https://github.com/AyatanaIndicators/ayatana-indicator-datetime/issues/144
* set format:
  ```shell
  gsettings set org.ayatana.indicator.datetime time-format 'format'
  ```
* get format range:
  ```shell
  gsettings range org.ayatana.indicator.datetime time-format
  ```
  as of now:
  
  'locale-default',
  '12-hour',
  '24-hour',
  'custom'
* set custom format:
  ```shell
  gsettings set org.ayatana.indicator.datetime custom-time-format '%l:%M %p'
  ```
