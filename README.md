marco
=====

marco — Manifest & resources compiler for .apk files

note: marco currently can handle only the simplest AndroidManifest.xml files.
If you need anything more, just extend it — and please feel encouraged to
contribute the improvements back upstream!

Installation
-----
```sh
nimble install https://github.com/levovix0/marco
```

Usage
-----
AndoidManifest.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.helloworld"
>
    <uses-sdk android:minSdkVersion="1" android:targetSdkVersion="30"/>
    <application android:label="HelloWorld">
        <activity android:name="HelloActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
```

```sh
marco < AndroidManifest.xml > apk/AndroidManifest.xml
```
or
```sh
marco -i AndroidManifest.xml -o apk/AndroidManifest.xml
```

References
----------
 - https://github.com/czak/minimal-android-project
 - https://github.com/sdklite/aapt/blob/9e6d1ad98469dffbc9940821551bd7a2e07dd1e0/src/main/java/com/sdklite/aapt/AssetEditor.java
 - https://github.com/aosp-mirror/platform_frameworks_base/blob/e5cf74326dc37e87c24016640b535a269499e1ec/tools/aapt/XMLNode.cpp#L1089
 - https://android.googlesource.com/platform/frameworks/base/+/dc36bb6dea837608c29c177a7ea8cf46b6a0cd53/tools/aapt/XMLNode.cpp
 - https://github.com/golang/mobile/blob/master/cmd/gomobile/binary_xml.go
 - https://code911.top/howto/how-to-read-compiled-xml-files-such-as-the-android-manifest
