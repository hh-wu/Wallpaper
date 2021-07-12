add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})

target("Wallpaper")
    add_rules("qt.widgetapp")
    add_rules("qt.quickapp")
    add_includedirs(".")
    add_headerfiles("utils.h","wallpaper.h")
    add_files("*.cpp")
    add_files("wallpaper.h")
    add_files("wallpaper.ui")
    add_files("icon.rc","icon.qrc")


    -- openmp
    add_rules("c++.openmp")
    add_packages("libomp")

    if is_plat("macosx") then
        add_frameworks("Foundation", "CoreFoundation", "CoreGraphics", "AppKit", "OpenCL")
    elseif is_plat("linux") then
        add_syslinks("pthread", "dl")
    elseif is_plat("windows") then
        add_syslinks("user32", "mfplat", "mfuuid","Ws2_32", "Secur32", "Bcrypt")
    end

    -- Qt framework
    add_frameworks("QtCore","QtGui","QtWebEngineWidgets")