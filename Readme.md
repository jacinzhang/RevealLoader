# 新版 Reveal 更新
1. 指定Reveal版本为 Reveal 13(匹配本地电脑 Reveal版本)
2. 可以debug查看extension(需要先安装 ExtensionList, control 文件 depend 字段添加了 extensionlist)

>一键安装到本地：`make package install`

## Reveal iOS Jailbreak Tweak 
Reveal Loader dynamically loads libReveal.dylib (Reveal.app support) into iOS apps on jailbroken devices. Configuration is via the Reveal menu in Settings.app

Reveal is an OS X application that allows you to remotely introspect a running applications view hierarchy and edit various view properties. 

Generally you have to include their debugging framework in your application at build time in-order to perform debugging actions, however with this tweak installed this is no longer necessary. 

For more info see [revealapp.com](http://revealapp.com)


## How to Install
Reveal Loader is available directly inside Cydia. Just search for the "Reveal Loader" development package.

## How to Install - Custom
See [here](http://www.ijailbreak.com/cydia/how-to-add-a-cydia-repository/) for how to add a Repository to Cydia.

Navigate to 'Cydia > Sources Tab > Edit > Add' and enter the below source URL.

`http://rheard.com/cydia`

Finally, search for Reveal Loader on the Packages Tab and select install. 

## How to Use
Open 'Settings > Reveal > Enabled Applications' and toggle the application or applications that you want to debug to on.

Launch the target application and it should appear inside Reveal.app on your Mac. 

(You will likely need to quit and relaunch the target application)

## Be Social
Follow me on [Twitter](https://twitter.com/intent/follow?screen_name=heardrwt) (@heardrwt)
