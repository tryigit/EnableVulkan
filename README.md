> [!WARNING]
> Vip Driver users (A740+) do not need to use this module. Boot based vulkan is enabled and supported.

> [!TIP]
> Just according to the tests of some telegram users. Recommended if you have a Snapdragon 888 or better processor.

# Enable Vulkan
Enables Vulkan support for Android 10 and above. Dynamic installation and information based on Android version. This module only enforces the Android system ui and hw vulkan. So in games using an emulator it will not enable forced vulkan and will not work in games. In games that don't use an emulator, Vulkan will of course work with this module. Unfortunately, it is impossible for a game that uses an emulator. For example, I recommend using this module for Genshin.

**Example:** https://github.com/tryigit/GenshinVulkanControl

## Benefits
+ Better UI performance (like animation).
+ Less battery consumption.
+ To think...

> [!WARNING]
> If you have an old processor, it may cause battery consumption and bugs.

## Vulkan Check

#### 1- To see the render changelog you can use (Adreno Gpu)

```
logcat | grep Adreno
```

Check which one you use when running an app.

`• AdrenoGLES (OpenGL)`

`• AdrenoVK (Vulkan)`

#### 2- To check which UI render pipeline is currently being used, use this command in termux

```
su -c dumpsys gfxinfo com.android.systemui | grep Pipeline | awk -F '=' '{print $2}'
```

## Telegram
https://t.me/cleverestech