# android_device_meizu_meilan3
Device repository for Meizu M3 Mini (CyanogenMod)

Fork of https://github.com/divis1969/android_device_meizu_meilan2
===========================

Getting Started
---------------

Initialize a repository with CyanogenMode:

    repo init -u git://github.com/divis1969/android.git -b meilan2

Optinally use a specific manifest (not a tip):

    repo init -u git://github.com/divis1969/android.git -b meilan2 -m meilan2-cm-12.1-v0.14.xml

Note: 7 more Cyanogen repositories were forked since v0.2, so if you will encounter an error while syncing on top
of exiting tree, use the suggestion from the error log (sync those repos with --force-sync) 

Build the code:

    source build/envsetup.sh
    lunch meilan3
    mka 4 bacon showcommands 2>&1 | tee build.log

Current state
-------------

- Cyanogen boots
- Touch, screen, keyboard, central key are working
- Wifi is working
- Camera is working
    - Preview
    - Still image capturing
- Audio is working
- GPS is working
- BT is working (discovery and connect were tested only)

Known Issues
-------------
- Camera video doesnt work

All issues: https://github.com/washinson/android_device_meizu_meilan3/issues

Change log
----------

### v0.1
first release
