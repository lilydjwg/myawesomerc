xdgmenu = function(terminal)
  return {
    {'Internet', --[[/usr/share/desktop-directories/Arch-Internet.directory]] {
        {'Avahi SSH服务器浏览器', '/usr/bin/bssh', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/bssh.desktop]]},
        {'Avahi VNC服务器浏览器', '/usr/bin/bvnc', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/bvnc.desktop]]},
        {'Dropbox', 'dropbox', '/usr/share/pixmaps/dropbox.png' --[[/usr/share/applications/dropbox.desktop]]},
        {'Dukto', 'dukto', '/usr/share/pixmaps/dukto.png' --[[/usr/share/applications/dukto.desktop]]},
        {'ELinks', (terminal or "xterm") .. " -e '/usr/bin/elinks'", '/usr/share/icons/gnome/16x16/mimetypes/html.png' --[[/usr/share/applications/elinks.desktop]]},
        {'Firefox', 'firefox', '/usr/share/icons/hicolor/16x16/apps/firefox.png' --[[/usr/share/applications/firefox.desktop]]},
        {'Google Chrome', '/usr/bin/google-chrome-stable', '/usr/share/icons/hicolor/16x16/apps/google-chrome.png' --[[/usr/share/applications/google-chrome.desktop]]},
        {'Google Earth', '/opt/google/earth/free/google-earth', '/usr/share/icons/hicolor/16x16/apps/google-earth.png' --[[/usr/share/applications/google-earth.desktop]]},
        {'MEGASync', 'megasync', '/usr/share/icons/hicolor/16x16/apps/mega.png' --[[/usr/share/applications/megasync.desktop]]},
        {'Pidgin 互联网通讯程序', 'pidgin', '/usr/share/icons/hicolor/16x16/apps/pidgin.png' --[[/usr/share/applications/pidgin.desktop]]},
        {'Skype', 'skype', '/usr/share/pixmaps/skype.png' --[[/usr/share/applications/skype.desktop]]},
        {'TigerVNC Viewer', '/usr/bin/vncviewer', '/usr/share/icons/hicolor/16x16/apps/tigervnc.png' --[[/usr/share/applications/vncviewer.desktop]]},
        {'Transmission', 'transmission-gtk', '/usr/share/pixmaps/transmission.png' --[[/usr/share/applications/transmission-gtk.desktop]]},
        {'X11VNC Server', 'x11vnc -gui tray=setpass -rfbport PROMPT -bg -o %HOME/.x11vnc.log.%VNCDISPLAY', '/usr/share/icons/gnome/16x16/devices/computer.png' --[[/usr/share/applications/x11vnc.desktop]]},
        {'Zenmap', 'zenmap', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap.desktop]]},
        {'Zenmap (as root)', '/usr/share/zenmap/su-to-zenmap.sh', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap-root.desktop]]},
        {'aLinkCreator', 'alc', '/usr/share/pixmaps/alc.xpm' --[[/usr/share/applications/alc.desktop]]},
        {'aMule', 'amule', '/usr/share/pixmaps/amule.xpm' --[[/usr/share/applications/amule.desktop]]},
        {'aMuleGUI', 'amulegui', '/usr/share/pixmaps/amulegui.xpm' --[[/usr/share/applications/amulegui.desktop]]},
        {'mutt', (terminal or "xterm") .. " -e 'mutt'" --[[/home/lilydjwg/.local/share/applications/mutt.desktop]]},
        {'qTox', 'qtox', '/usr/share/icons/hicolor/16x16/apps/qtox.png' --[[/usr/share/applications/qTox.desktop]]},
        {'wxCas', 'wxcas', '/usr/share/pixmaps/wxcas.xpm' --[[/usr/share/applications/wxcas.desktop]]},
        {'阿里旺旺', 'AliWangWang', '/usr/share/pixmaps/AliWangWang.png' --[[/usr/share/applications/aliwangwang.desktop]]},
      }
    }, {'办公', --[[/usr/share/desktop-directories/Arch-Office.directory]] {
        {'Ascii Design', 'ascii-design', '/usr/share/pixmaps/ascii-design.png' --[[/usr/share/applications/ascii-design.desktop]]},
        {'FBReader', 'FBReader', '/usr/share/pixmaps/FBReader.png' --[[/usr/share/applications/FBReader.desktop]]},
        {'LibreOffice', 'libreoffice', '/usr/share/icons/gnome/16x16/apps/libreoffice-startcenter.png' --[[/usr/share/applications/libreoffice-startcenter.desktop]]},
        {'LibreOffice Base', 'libreoffice --base', '/usr/share/icons/gnome/16x16/apps/libreoffice-base.png' --[[/usr/share/applications/libreoffice-base.desktop]]},
        {'LibreOffice Calc', 'libreoffice --calc', '/usr/share/icons/gnome/16x16/apps/libreoffice-calc.png' --[[/usr/share/applications/libreoffice-calc.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'LibreOffice Impress', 'libreoffice --impress', '/usr/share/icons/gnome/16x16/apps/libreoffice-impress.png' --[[/usr/share/applications/libreoffice-impress.desktop]]},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'LibreOffice Writer', 'libreoffice --writer', '/usr/share/icons/gnome/16x16/apps/libreoffice-writer.png' --[[/usr/share/applications/libreoffice-writer.desktop]]},
        {'Master PDF Editor', '/opt/masterpdfeditor/masterpdfeditor3', '/usr/share/pixmaps/pdfeditor.png' --[[/usr/share/applications/masterpdfeditor.desktop]]},
        {'WPS 文字', '/usr/bin/wps', '/usr/share/icons/hicolor/48x48/apps/wps-office-wpsmain.png' --[[/usr/share/applications/wps-office-wps.desktop]]},
        {'WPS 演示', '/usr/bin/wpp', '/usr/share/icons/hicolor/48x48/apps/wps-office-wppmain.png' --[[/usr/share/applications/wps-office-wpp.desktop]]},
        {'WPS 表格', '/usr/bin/et', '/usr/share/icons/hicolor/48x48/apps/wps-office-etmain.png' --[[/usr/share/applications/wps-office-et.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura-pdf-poppler.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
      }
    }, {'图像', --[[/usr/share/desktop-directories/Arch-Graphics.directory]] {
        {'Blender', 'blender', '/usr/share/icons/hicolor/16x16/apps/blender.png' --[[/usr/share/applications/blender.desktop]]},
        {'Dia 图表编辑器', 'dia', '/usr/share/icons/hicolor/16x16/apps/dia.png' --[[/usr/share/applications/dia.desktop]]},
        {'Feh', 'feh', '/usr/share/feh/images/feh.png' --[[/usr/share/applications/feh.desktop]]},
        {'FontForge', 'fontforge', '/usr/share/icons/hicolor/16x16/apps/fontforge.png' --[[/usr/share/applications/fontforge.desktop]]},
        {'GNU 图像处理程序', 'gimp-2.8', '/usr/share/icons/hicolor/16x16/apps/gimp.png' --[[/usr/share/applications/gimp.desktop]]},
        {'Geeqie', 'geeqie -r', '/usr/share/pixmaps/geeqie.png' --[[/usr/share/applications/geeqie.desktop]]},
        {'Inkscape', 'inkscape', '/usr/share/icons/hicolor/16x16/apps/inkscape.png' --[[/usr/share/applications/inkscape.desktop]]},
        {'KeyMon', 'key-mon', '/usr/share/pixmaps/key-mon.xpm' --[[/usr/share/applications/key-mon.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg' --[[/usr/share/applications/pencil.desktop]]},
        {'ida', 'ida', '/usr/share/pixmaps/ida.png' --[[/usr/share/applications/ida.desktop]]},
        {'图像查看器', 'eog', '/usr/share/icons/hicolor/16x16/apps/eog.png' --[[/usr/share/applications/eog.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
      }
    }, {'影音', --[[/usr/share/desktop-directories/Arch-Multimedia.directory]] {
        {'Audacity', 'env UBUNTU_MENUPROXY=0 audacity', '/usr/share/pixmaps/audacity.xpm' --[[/usr/share/applications/audacity.desktop]]},
        {'Drumstick Drum Grid', 'drumstick-drumgrid', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-drumgrid.desktop]]},
        {'Drumstick MIDI Player', 'drumstick-guiplayer', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-guiplayer.desktop]]},
        {'Drumstick Virtual Piano', 'drumstick-vpiano', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-vpiano.desktop]]},
        {'FlashPlayer', 'flashplayer', '/usr/share/pixmaps/gflashplayer.png' --[[/usr/share/applications/flashplayer.desktop]]},
        {'MPlayer Media Player', 'mplayer', '/usr/share/pixmaps/mplayer.png' --[[/usr/share/applications/mplayer.desktop]]},
        {'PulseAudio 音量控制', 'pavucontrol', '/usr/share/icons/gnome/16x16/apps/multimedia-volume-control.png' --[[/usr/share/applications/pavucontrol.desktop]]},
        {'Qt V4L2 test Utility', 'qv4l2', '/usr/share/icons/hicolor/16x16/apps/qv4l2.png' --[[/usr/share/applications/qv4l2.desktop]]},
        {'VLC media player', '/usr/bin/vlc --started-from-file', '/usr/share/icons/hicolor/16x16/apps/vlc.png' --[[/usr/share/applications/vlc.desktop]]},
        {'VMPK', 'vmpk', '/usr/share/icons/hicolor/16x16/apps/vmpk.png' --[[/usr/share/applications/vmpk.desktop]]},
        {'gtk-recordMyDesktop', 'gtk-recordMyDesktop', '/usr/share/pixmaps/gtk-recordmydesktop.png' --[[/usr/share/applications/gtk-recordmydesktop.desktop]]},
        {'mpv Media Player', 'mpv --profile=pseudo-gui --', '/usr/share/icons/hicolor/16x16/apps/mpv.png' --[[/usr/share/applications/mpv.desktop]]},
        {'qTox', 'qtox', '/usr/share/icons/hicolor/16x16/apps/qtox.png' --[[/usr/share/applications/qTox.desktop]]},
      }
    }, {'教育', --[[/usr/share/desktop-directories/Arch-Education.directory]] {
        {'Drumstick Drum Grid', 'drumstick-drumgrid', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-drumgrid.desktop]]},
        {'Drumstick MIDI Player', 'drumstick-guiplayer', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-guiplayer.desktop]]},
        {'Drumstick Virtual Piano', 'drumstick-vpiano', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-vpiano.desktop]]},
        {'GeoGebra', 'geogebra', '/usr/share/icons/hicolor/scalable/apps/geogebra.svg' --[[/usr/share/applications/geogebra.desktop]]},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'Stellarium', 'stellarium', '/usr/share/pixmaps/stellarium.xpm' --[[/usr/share/applications/stellarium.desktop]]},
        {'VMPK', 'vmpk', '/usr/share/icons/hicolor/16x16/apps/vmpk.png' --[[/usr/share/applications/vmpk.desktop]]},
      }
    }, {'游戏', --[[/usr/share/desktop-directories/Arch-Games.directory]] {
        {'Chromium B.S.U.', 'chromium-bsu', '/usr/share/icons/hicolor/64x64/apps/chromium-bsu.png' --[[/usr/share/applications/chromium-bsu.desktop]]},
        {'Dosbox', 'dosbox', '/usr/share/pixmaps/dosbox.png' --[[/usr/share/applications/dosbox.desktop]]},
        {'Golly', 'golly', '/usr/share/pixmaps/golly.xpm' --[[/usr/share/applications/golly.desktop]]},
        {'Narcissu2-en', '/usr/bin/narcissu2-en', '/usr/share/pixmaps/narcissu2-en.png' --[[/usr/share/applications/narcissu2-en.desktop]]},
        {'Teeworlds', 'teeworlds', '/usr/share/pixmaps/teeworlds.png' --[[/usr/share/applications/teeworlds.desktop]]},
        {'gPlanarity', 'gplanarity', '/usr/share/pixmaps/gplanarity.png' --[[/usr/share/applications/gplanarity.desktop]]},
        {'机器人', 'gnome-robots', '/usr/share/icons/hicolor/16x16/apps/gnome-robots.png' --[[/usr/share/applications/gnome-robots.desktop]]},
        {'黑白棋', 'iagno', '/usr/share/icons/hicolor/16x16/apps/iagno.png' --[[/usr/share/applications/iagno.desktop]]},
      }
    }, {'科学和数学', --[[/usr/share/desktop-directories/Arch-Science.directory]] {
        {'Celestia', 'celestia', '/usr/share/pixmaps/celestia.png' --[[/usr/share/applications/celestia.desktop]]},
      }
    }, {'系统工具', --[[/usr/share/desktop-directories/Arch-System-Tools.directory]] {
        {'Avahi Zero浏览器', '/usr/bin/avahi-discover', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/avahi-discover.desktop]]},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png' --[[/usr/share/applications/elflibviewer.desktop]]},
        {'Fcitx', 'fcitx', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx.desktop]]},
        {'GParted', '/usr/bin/gparted_polkit', '/usr/share/icons/hicolor/16x16/apps/gparted.png' --[[/usr/share/applications/gparted.desktop]]},
        {'Htop', (terminal or "xterm") .. " -e 'htop'", '/usr/share/pixmaps/htop.png' --[[/usr/share/applications/htop.desktop]]},
        {'LSHW', '/usr/sbin/gtk-lshw', '/usr/share/lshw/artwork/logo.svg' --[[/usr/share/applications/gtk-lshw.desktop]]},
        {'MEGASync', 'megasync', '/usr/share/icons/hicolor/16x16/apps/mega.png' --[[/usr/share/applications/megasync.desktop]]},
        {'Oracle VM VirtualBox', 'VirtualBox', '/usr/share/icons/hicolor/16x16/mimetypes/virtualbox.png' --[[/usr/share/applications/virtualbox.desktop]]},
        {'UXTerm', 'uxterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/uxterm.desktop]]},
        {'Wireshark', 'wireshark', '/usr/share/icons/hicolor/16x16/apps/wireshark.png' --[[/usr/share/applications/wireshark.desktop]]},
        {'XTerm', 'xterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/xterm.desktop]]},
        {'Xfce 终端', 'xfce4-terminal', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/xfce4-terminal.desktop]]},
        {'磁盘使用情况分析器', 'baobab', '/usr/share/icons/hicolor/16x16/apps/baobab.png' --[[/usr/share/applications/org.gnome.baobab.desktop]]},
        {'配置编辑器', 'gconf-editor', '/usr/share/icons/hicolor/16x16/apps/gconf-editor.png' --[[/usr/share/applications/gconf-editor.desktop]]},
        {'键盘布局', 'gkbd-keyboard-display', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-keyboard.png' --[[/usr/share/applications/gkbd-keyboard-display.desktop]]},
      }
    }, {'编程', --[[/usr/share/desktop-directories/Arch-Development.directory]] {
        {'Android SDK', 'android', '/usr/share/pixmaps/android-sdk.png' --[[/usr/share/applications/android-sdk.desktop]]},
        {'CMake', 'cmake-gui', '/usr/share/icons/hicolor/32x32/apps/CMakeSetup.png' --[[/usr/share/applications/CMake.desktop]]},
        {'D-Feet', 'd-feet', '/usr/share/icons/hicolor/16x16/apps/d-feet.png' --[[/usr/share/applications/d-feet.desktop]]},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png' --[[/usr/share/applications/elflibviewer.desktop]]},
        {'Emacs', 'emacs', '/usr/share/icons/hicolor/16x16/apps/emacs.png' --[[/usr/share/applications/emacs.desktop]]},
        {'FLUID', 'fluid', '/usr/share/icons/hicolor/16x16/apps/fluid.png' --[[/usr/share/applications/fluid.desktop]]},
        {'GTK+ Demo', 'gtk3-demo', '/usr/share/icons/hicolor/16x16/apps/gtk3-demo.png' --[[/usr/share/applications/gtk3-demo.desktop]]},
        {'Icon Browser', 'gtk3-icon-browser' --[[/usr/share/applications/gtk3-icon-browser.desktop]]},
        {'Java Mission Control', '/usr/lib/jvm/java-8-jdk/bin/jmc', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jmc-jdk8.desktop]]},
        {'Java Monitoring and Management Console', '/usr/lib/jvm/java-8-jdk/bin/jconsole', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jconsole-jdk8.desktop]]},
        {'Java VisualVM', '/usr/lib/jvm/java-8-jdk/bin/jvisualvm', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jvisualvm-jdk8.desktop]]},
        {'Meld', 'meld', '/usr/share/icons/hicolor/16x16/apps/meld.png' --[[/usr/share/applications/meld.desktop]]},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg' --[[/usr/share/applications/pencil.desktop]]},
        {'Qt Assistant', '/usr/lib/qt/bin/assistant', '/usr/share/icons/hicolor/32x32/apps/assistant.png' --[[/usr/share/applications/assistant.desktop]]},
        {'Qt Designer', '/usr/lib/qt/bin/designer', '/usr/share/icons/hicolor/128x128/apps/QtProject-designer.png' --[[/usr/share/applications/designer.desktop]]},
        {'Qt Linguist', '/usr/lib/qt/bin/linguist', '/usr/share/icons/hicolor/16x16/apps/linguist.png' --[[/usr/share/applications/linguist.desktop]]},
        {'Qt QDbusViewer', '/usr/lib/qt/bin/qdbusviewer', '/usr/share/icons/hicolor/32x32/apps/qdbusviewer.png' --[[/usr/share/applications/qdbusviewer.desktop]]},
        {'Qt4 Assistant', 'assistant-qt4', '/usr/share/icons/hicolor/32x32/apps/assistant-qt4.png' --[[/usr/share/applications/assistant-qt4.desktop]]},
        {'Qt4 Designer', 'designer-qt4', '/usr/share/icons/hicolor/128x128/apps/designer-qt4.png' --[[/usr/share/applications/designer-qt4.desktop]]},
        {'Qt4 Linguist', 'linguist-qt4', '/usr/share/icons/hicolor/16x16/apps/linguist-qt4.png' --[[/usr/share/applications/linguist-qt4.desktop]]},
        {'Qt4 QDbusViewer', 'qdbusviewer-qt4', '/usr/share/icons/hicolor/32x32/apps/qdbusviewer-qt4.png' --[[/usr/share/applications/qdbusviewer-qt4.desktop]]},
        {'Widget Factory', 'gtk3-widget-factory', '/usr/share/icons/hicolor/16x16/apps/gtk3-widget-factory.png' --[[/usr/share/applications/gtk3-widget-factory.desktop]]},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/bpython.png' --[[/usr/share/applications/bpython.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'" --[[/usr/share/applications/ipython.desktop]]},
        {'sandbox', (terminal or "xterm") .. " -e 'sandbox'", '/usr/share/pixmaps/sandbox.svg' --[[/usr/share/applications/sandbox.desktop]]},
      }
    }, {'辅助功能', --[[/usr/share/desktop-directories/Arch-Accessibility.directory]] {
        {'Dasher', 'dasher', '/usr/share/icons/hicolor/48x48/apps/dasher.png' --[[/usr/share/applications/dasher.desktop]]},
      }
    }, {'附件', --[[/usr/share/desktop-directories/Arch-Accessories.directory]] {
        {'Dasher', 'dasher', '/usr/share/icons/hicolor/48x48/apps/dasher.png' --[[/usr/share/applications/dasher.desktop]]},
        {'Fcitx 皮肤安装器', 'fcitx-skin-installer', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx-skin-installer.desktop]]},
        {'FreeFileSync', 'FreeFileSync', '/usr/share/pixmaps/ffsicon.png' --[[/usr/share/applications/FreeFileSync.desktop]]},
        {'Graphical Disk Map', 'gdmap', '/usr/share/pixmaps/gdmap_icon.png' --[[/usr/share/applications/gdmap.desktop]]},
        {'Keyboard', 'matchbox-keyboard', '/usr/share/pixmaps/matchbox-keyboard.png' --[[/usr/share/applications/inputmethods/matchbox-keyboard.desktop]]},
        {'Leafpad', 'leafpad', '/usr/share/pixmaps/leafpad.png' --[[/usr/share/applications/leafpad.desktop]]},
        {'Qalculate!', 'qalculate-gtk', '/usr/share/pixmaps/qalculate.png' --[[/usr/share/applications/qalculate-gtk.desktop]]},
        {'RealtimeSync', 'RealtimeSync', '/usr/share/pixmaps/rtsicon.png' --[[/usr/share/applications/RealtimeSync.desktop]]},
        {'ScreenRuler', 'screenruler', '/usr/share/pixmaps/screenruler-icon-32x32.png' --[[/usr/share/applications/gnome-screenruler.desktop]]},
        {'Shutter', 'shutter', '/usr/share/pixmaps/shutter.png' --[[/usr/share/applications/shutter.desktop]]},
        {'Skype Call Recorder', 'skype-call-recorder', '/usr/share/icons/hicolor/128x128/apps/skype-call-recorder.png' --[[/usr/share/applications/skype-call-recorder.desktop]]},
        {'Sublime Text', 'subl', '/usr/share/icons/hicolor/16x16/apps/sublime_text.png' --[[/usr/share/applications/sublime-text.desktop]]},
        {'Synergy', 'synergy', '/usr/share/icons/synergy.ico' --[[/usr/share/applications/synergy.desktop]]},
        {'Vi IMproved', 'gvim -f', '/usr/share/pixmaps/gvim.png' --[[/usr/share/applications/gvim.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/bpython.png' --[[/usr/share/applications/bpython.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'" --[[/usr/share/applications/ipython.desktop]]},
        {'wxHexEditor', 'wxHexEditor', '/usr/share/pixmaps/wxHexEditor.png' --[[/usr/share/applications/wxHexEditor.desktop]]},
        {'wxMEdit', 'wxmedit', '/usr/share/pixmaps/wxmedit.png' --[[/usr/share/applications/wxmedit.desktop]]},
        {'关于 Xfce', 'xfce4-about', '/usr/share/icons/gnome/16x16/actions/help-about.png' --[[/usr/share/applications/xfce4-about.desktop]]},
        {'在已有的 GVIM 里打开', 'vv', '/usr/share/pixmaps/gvim.png' --[[/home/lilydjwg/.local/share/applications/vv.desktop]]},
        {'字体查看器', 'gnome-font-viewer', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-font.png' --[[/usr/share/applications/org.gnome.font-viewer.desktop]]},
        {'字符映射表', 'gucharmap', '/usr/share/icons/gnome/16x16/apps/accessories-character-map.png' --[[/usr/share/applications/gucharmap.desktop]]},
        {'应用程序查找器', 'xfce4-appfinder', '/usr/share/icons/gnome/16x16/actions/edit-find.png' --[[/usr/share/applications/xfce4-appfinder.desktop]]},
        {'文件', 'nautilus --new-window', '/usr/share/icons/gnome/16x16/apps/system-file-manager.png' --[[/usr/share/applications/org.gnome.Nautilus.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
        {'磁盘', 'gnome-disks', '/usr/share/icons/hicolor/16x16/apps/gnome-disks.png' --[[/usr/share/applications/org.gnome.DiskUtility.desktop]]},
        {'运行程序...', 'xfce4-appfinder --collapsed', '/usr/share/icons/gnome/16x16/actions/system-run.png' --[[/usr/share/applications/xfce4-run.desktop]]},
      }
    }
  }
end
