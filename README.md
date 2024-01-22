> [!TIP]
> Recommended if you have a Snapdragon 888 or better processor.

# Enable Vulkan
Enables Vulkan support for Android 10 and above. Dynamic installation and information based on Android version.

## Vulkan Check (Adreno Gpu)

#### 1- To see the render changelog you can use

```
logcat | grep Adreno
```

Check which one you use when running an app

`• AdrenoGLES (OpenGL)`

`• AdrenoVK (Vulkan)`

### 2- To check which UI render pipeline is currently being used, use this command in termux

```
su -c dumpsys gfxinfo com.android.systemui | grep Pipeline | awk -F '=' '{print $2}'
```
