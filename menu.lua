xdgmenu = function(terminal)
  return {
    {'Internet', --[[/usr/share/desktop-directories/Arch-Internet.directory]] {
        {'Avahi SSH 服务器的浏览器', '/usr/bin/bssh', '/usr/share/icons/Adwaita/16x16/devices/network-wired.png' --[[/usr/share/applications/bssh.desktop]]},
        {'Avahi VNC 服务器的浏览器', '/usr/bin/bvnc', '/usr/share/icons/Adwaita/16x16/devices/network-wired.png' --[[/usr/share/applications/bvnc.desktop]]},
        {'Dropbox', 'dropbox', '/usr/share/pixmaps/dropbox.png' --[[/usr/share/applications/dropbox.desktop]]},
        {'ELinks', (terminal or "xterm") .. " -e '/usr/bin/elinks'" --[[/usr/share/applications/elinks.desktop]]},
        {'Firefox', '/usr/lib/firefox/firefox', '/usr/share/icons/hicolor/16x16/apps/firefox.png' --[[/usr/share/applications/firefox.desktop]]},
        {'Google Chrome', '/usr/bin/google-chrome-stable', '/usr/share/icons/hicolor/16x16/apps/google-chrome.png' --[[/usr/share/applications/google-chrome.desktop]]},
        {'MEGASync', 'megasync', '/usr/share/icons/hicolor/16x16/apps/mega.png' --[[/usr/share/applications/megasync.desktop]]},
        {'Pidgin 互联网通讯程序', 'pidgin', '/usr/share/icons/hicolor/16x16/apps/pidgin.png' --[[/usr/share/applications/pidgin.desktop]]},
        {'TigerVNC Viewer', '/usr/bin/vncviewer', '/usr/share/icons/hicolor/16x16/apps/tigervnc.png' --[[/usr/share/applications/vncviewer.desktop]]},
        {'Transmission', 'transmission-gtk', '/usr/share/pixmaps/transmission.png' --[[/usr/share/applications/transmission-gtk.desktop]]},
        {'Wine QQ 轻聊版', 'sudo mynetns_run WINEDEBUG=-all qq', '/home/lilydjwg/.local/share/icons/hicolor/256x256/apps/qq.png' --[[/home/lilydjwg/.local/share/applications/wine-qq.desktop]]},
        {'Wireshark', 'wireshark', '/usr/share/icons/hicolor/16x16/apps/wireshark.png' --[[/usr/share/applications/wireshark.desktop]]},
        {'X11VNC Server', 'x11vnc -gui tray=setpass -rfbport PROMPT -bg -o %HOME/.x11vnc.log.%VNCDISPLAY', '/usr/share/icons/Adwaita/16x16/devices/computer.png' --[[/usr/share/applications/x11vnc.desktop]]},
        {'Zenmap', 'zenmap', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap.desktop]]},
        {'Zenmap (as root)', '/usr/share/zenmap/su-to-zenmap.sh', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap-root.desktop]]},
        {'aLinkCreator', 'alc', '/usr/share/pixmaps/alc.xpm' --[[/usr/share/applications/alc.desktop]]},
        {'aMule', 'amule', '/usr/share/pixmaps/amule.xpm' --[[/usr/share/applications/amule.desktop]]},
        {'aMuleGUI', 'amulegui', '/usr/share/pixmaps/amulegui.xpm' --[[/usr/share/applications/amulegui.desktop]]},
        {'mutt', (terminal or "xterm") .. " -e 'mutt'" --[[/home/lilydjwg/.local/share/applications/mutt.desktop]]},
        {'qTox', 'qtox', '/usr/share/icons/hicolor/16x16/apps/qtox.png' --[[/usr/share/applications/qtox.desktop]]},
        {'wxCas', 'wxcas', '/usr/share/pixmaps/wxcas.xpm' --[[/usr/share/applications/wxcas.desktop]]},
        {'网络浏览器', 'exo-open --launch WebBrowser', '/usr/share/icons/Adwaita/16x16/apps/web-browser.png' --[[/usr/share/applications/exo-web-browser.desktop]]},
        {'邮件阅读器', 'exo-open --launch MailReader' --[[/usr/share/applications/exo-mail-reader.desktop]]},
      }
    }, {'办公', --[[/usr/share/desktop-directories/Arch-Office.directory]] {
        {'FBReader', 'FBReader', '/usr/share/pixmaps/FBReader.png' --[[/usr/share/applications/FBReader.desktop]]},
        {'LibreOffice', 'libreoffice', '/usr/share/icons/hicolor/16x16/apps/libreoffice-startcenter.png' --[[/usr/share/applications/libreoffice-startcenter.desktop]]},
        {'LibreOffice Base', 'libreoffice --base', '/usr/share/icons/hicolor/16x16/apps/libreoffice-base.png' --[[/usr/share/applications/libreoffice-base.desktop]]},
        {'LibreOffice Calc', 'libreoffice --calc', '/usr/share/icons/hicolor/16x16/apps/libreoffice-calc.png' --[[/usr/share/applications/libreoffice-calc.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/hicolor/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'LibreOffice Impress', 'libreoffice --impress', '/usr/share/icons/hicolor/16x16/apps/libreoffice-impress.png' --[[/usr/share/applications/libreoffice-impress.desktop]]},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/hicolor/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'LibreOffice Writer', 'libreoffice --writer', '/usr/share/icons/hicolor/16x16/apps/libreoffice-writer.png' --[[/usr/share/applications/libreoffice-writer.desktop]]},
        {'WPS 文字', '/usr/bin/wps', '/usr/share/icons/hicolor/48x48/apps/wps-office-wpsmain.png' --[[/usr/share/applications/wps-office-wps.desktop]]},
        {'WPS 演示', '/usr/bin/wpp', '/usr/share/icons/hicolor/48x48/apps/wps-office-wppmain.png' --[[/usr/share/applications/wps-office-wpp.desktop]]},
        {'WPS 表格', '/usr/bin/et', '/usr/share/icons/hicolor/48x48/apps/wps-office-etmain.png' --[[/usr/share/applications/wps-office-et.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/Adwaita/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura-pdf-poppler.desktop]]},
        {'apvlv', 'apvlv' --[[/usr/share/applications/apvlv.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/Adwaita/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
      }
    }, {'图像', --[[/usr/share/desktop-directories/Arch-Graphics.directory]] {
        {'Dia 图表编辑器', 'dia', '/usr/share/icons/hicolor/16x16/apps/dia.png' --[[/usr/share/applications/dia.desktop]]},
        {'Feh', 'feh', '/usr/share/icons/hicolor/48x48/apps/feh.png' --[[/usr/share/applications/feh.desktop]]},
        {'GNU 图像处理程序', 'gimp-2.8', '/usr/share/icons/hicolor/16x16/apps/gimp.png' --[[/usr/share/applications/gimp.desktop]]},
        {'Geeqie', 'geeqie -r', '/usr/share/pixmaps/geeqie.png' --[[/usr/share/applications/geeqie.desktop]]},
        {'Inkscape', 'inkscape', '/usr/share/icons/hicolor/16x16/apps/inkscape.png' --[[/usr/share/applications/inkscape.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/hicolor/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'MyPaint', 'mypaint', '/usr/share/icons/hicolor/16x16/apps/mypaint.png' --[[/usr/share/applications/mypaint.desktop]]},
        {'XDot', 'xdot' --[[/usr/share/applications/xdot.desktop]]},
        {'ida', 'ida', '/usr/share/pixmaps/ida.png' --[[/usr/share/applications/ida.desktop]]},
        {'图像查看器', 'eog', '/usr/share/icons/hicolor/16x16/apps/eog.png' --[[/usr/share/applications/eog.desktop]]},
        {'字型鍛造廠', 'fontforge', '/usr/share/icons/hicolor/16x16/apps/fontforge.png' --[[/usr/share/applications/fontforge.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/Adwaita/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
      }
    }, {'影音', --[[/usr/share/desktop-directories/Arch-Multimedia.directory]] {
        {'Audacity', 'env UBUNTU_MENUPROXY=0 audacity', '/usr/share/pixmaps/audacity.xpm' --[[/usr/share/applications/audacity.desktop]]},
        {'Drumstick Drum Grid', 'drumstick-drumgrid', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-drumgrid.desktop]]},
        {'Drumstick MIDI Player', 'drumstick-guiplayer', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-guiplayer.desktop]]},
        {'Drumstick Virtual Piano', 'drumstick-vpiano', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-vpiano.desktop]]},
        {'FlashPlayer', 'flashplayer', '/usr/share/pixmaps/gflashplayer.png' --[[/usr/share/applications/flashplayer.desktop]]},
        {'MPlayer Media Player', 'mplayer', '/usr/share/pixmaps/mplayer.png' --[[/usr/share/applications/mplayer.desktop]]},
        {'PulseAudio 音量控制', 'pavucontrol', '/usr/share/icons/Adwaita/16x16/apps/multimedia-volume-control.png' --[[/usr/share/applications/pavucontrol.desktop]]},
        {'Qt V4L2 test Utility', 'qv4l2', '/usr/share/icons/hicolor/16x16/apps/qv4l2.png' --[[/usr/share/applications/qv4l2.desktop]]},
        {'SimpleScreenRecorder', 'simplescreenrecorder --logfile', '/usr/share/icons/hicolor/16x16/apps/simplescreenrecorder.png' --[[/usr/share/applications/simplescreenrecorder.desktop]]},
        {'VMPK', 'vmpk', '/usr/share/icons/hicolor/16x16/apps/vmpk.png' --[[/usr/share/applications/vmpk.desktop]]},
        {'gtk-recordMyDesktop', 'gtk-recordMyDesktop', '/usr/share/pixmaps/gtk-recordmydesktop.png' --[[/usr/share/applications/gtk-recordmydesktop.desktop]]},
        {'mpv 媒体播放器', 'mpv --player-operation-mode=pseudo-gui --', '/usr/share/icons/hicolor/16x16/apps/mpv.png' --[[/usr/share/applications/mpv.desktop]]},
        {'qTox', 'qtox', '/usr/share/icons/hicolor/16x16/apps/qtox.png' --[[/usr/share/applications/qtox.desktop]]},
      }
    }, {'教育', --[[/usr/share/desktop-directories/Arch-Education.directory]] {
        {'Drumstick Drum Grid', 'drumstick-drumgrid', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-drumgrid.desktop]]},
        {'Drumstick MIDI Player', 'drumstick-guiplayer', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-guiplayer.desktop]]},
        {'Drumstick Virtual Piano', 'drumstick-vpiano', '/usr/share/icons/hicolor/16x16/apps/drumstick.png' --[[/usr/share/applications/drumstick-vpiano.desktop]]},
        {'GeoGebra', 'geogebra', '/usr/share/icons/hicolor/scalable/apps/geogebra.svg' --[[/usr/share/applications/geogebra.desktop]]},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/hicolor/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'Stellarium', 'stellarium', '/usr/share/pixmaps/stellarium.xpm' --[[/usr/share/applications/stellarium.desktop]]},
        {'VMPK', 'vmpk', '/usr/share/icons/hicolor/16x16/apps/vmpk.png' --[[/usr/share/applications/vmpk.desktop]]},
      }
    }, {'科学和数学', --[[/usr/share/desktop-directories/Arch-Science.directory]] {
        {'Qalculate!', 'qalculate-gtk', '/usr/share/pixmaps/qalculate.png' --[[/usr/share/applications/qalculate-gtk.desktop]]},
        {'XDot', 'xdot' --[[/usr/share/applications/xdot.desktop]]},
      }
    }, {'系统工具', --[[/usr/share/desktop-directories/Arch-System-Tools.directory]] {
        {'Avahi Zeroconf 浏览器', '/usr/bin/avahi-discover', '/usr/share/icons/Adwaita/16x16/devices/network-wired.png' --[[/usr/share/applications/avahi-discover.desktop]]},
        {'Fcitx', 'fcitx', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx.desktop]]},
        {'GParted', '/usr/bin/gparted_polkit', '/usr/share/icons/hicolor/16x16/apps/gparted.png' --[[/usr/share/applications/gparted.desktop]]},
        {'Htop', (terminal or "xterm") .. " -e 'htop'", '/usr/share/pixmaps/htop.png' --[[/usr/share/applications/htop.desktop]]},
        {'Keyboard Layout', 'gkbd-keyboard-display', '/usr/share/icons/Adwaita/16x16/apps/preferences-desktop-keyboard.png' --[[/usr/share/applications/gkbd-keyboard-display.desktop]]},
        {'LSHW', '/usr/sbin/gtk-lshw', '/usr/share/lshw/artwork/logo.svg' --[[/usr/share/applications/gtk-lshw.desktop]]},
        {'MEGASync', 'megasync', '/usr/share/icons/hicolor/16x16/apps/mega.png' --[[/usr/share/applications/megasync.desktop]]},
        {'Oracle VM VirtualBox', 'VirtualBox', '/usr/share/icons/hicolor/16x16/mimetypes/virtualbox.png' --[[/usr/share/applications/virtualbox.desktop]]},
        {'Thunar 文件管理器', 'thunar', '/usr/share/icons/hicolor/16x16/apps/Thunar.png' --[[/usr/share/applications/Thunar.desktop]]},
        {'UXTerm', 'uxterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/uxterm.desktop]]},
        {'XTerm', 'xterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/xterm.desktop]]},
        {'Xfce 终端', 'xfce4-terminal', '/usr/share/icons/Adwaita/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/xfce4-terminal.desktop]]},
        {'ranger', (terminal or "xterm") .. " -e 'ranger'", '/usr/share/icons/Adwaita/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/ranger.desktop]]},
        {'批量重命名', '/usr/lib/Thunar/ThunarBulkRename', '/usr/share/icons/hicolor/16x16/apps/Thunar.png' --[[/usr/share/applications/Thunar-bulk-rename.desktop]]},
        {'用 Thunar 打开文件夹', 'thunar', '/usr/share/icons/hicolor/16x16/apps/Thunar.png' --[[/usr/share/applications/Thunar-folder-handler.desktop]]},
        {'磁碟用量分析器', 'baobab', '/usr/share/icons/hicolor/16x16/apps/baobab.png' --[[/usr/share/applications/org.gnome.baobab.desktop]]},
      }
    }, {'编程', --[[/usr/share/desktop-directories/Arch-Development.directory]] {
        {'CMake', 'cmake-gui', '/usr/share/icons/hicolor/32x32/apps/CMakeSetup.png' --[[/usr/share/applications/CMake.desktop]]},
        {'D-Feet', 'd-feet', '/usr/share/icons/hicolor/16x16/apps/d-feet.png' --[[/usr/share/applications/d-feet.desktop]]},
        {'FLUID', 'fluid', '/usr/share/icons/hicolor/16x16/apps/fluid.png' --[[/usr/share/applications/fluid.desktop]]},
        {'GTK+ Demo', 'gtk3-demo', '/usr/share/icons/hicolor/16x16/apps/gtk3-demo.png' --[[/usr/share/applications/gtk3-demo.desktop]]},
        {'Icon Browser', 'gtk3-icon-browser' --[[/usr/share/applications/gtk3-icon-browser.desktop]]},
        {'Java Mission Control', '/usr/lib/jvm/java-8-jdk/bin/jmc', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jmc-jdk8.desktop]]},
        {'Java Monitoring and Management Console', '/usr/lib/jvm/java-8-jdk/bin/jconsole', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jconsole-jdk8.desktop]]},
        {'Java VisualVM', '/usr/lib/jvm/java-8-jdk/bin/jvisualvm', '/usr/share/icons/hicolor/16x16/apps/sun-java-jdk8.png' --[[/usr/share/applications/jvisualvm-jdk8.desktop]]},
        {'Meld', 'meld', '/usr/share/icons/hicolor/16x16/apps/meld.png' --[[/usr/share/applications/meld.desktop]]},
        {'Qt4 Assistant', 'assistant-qt4', '/usr/share/icons/hicolor/32x32/apps/assistant-qt4.png' --[[/usr/share/applications/assistant-qt4.desktop]]},
        {'Qt4 Designer', 'designer-qt4', '/usr/share/icons/hicolor/128x128/apps/designer-qt4.png' --[[/usr/share/applications/designer-qt4.desktop]]},
        {'Qt4 Linguist', 'linguist-qt4', '/usr/share/icons/hicolor/16x16/apps/linguist-qt4.png' --[[/usr/share/applications/linguist-qt4.desktop]]},
        {'Qt4 QDbusViewer', 'qdbusviewer-qt4', '/usr/share/icons/hicolor/32x32/apps/qdbusviewer-qt4.png' --[[/usr/share/applications/qdbusviewer-qt4.desktop]]},
        {'Widget Factory', 'gtk3-widget-factory', '/usr/share/icons/hicolor/16x16/apps/gtk3-widget-factory.png' --[[/usr/share/applications/gtk3-widget-factory.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/pixmaps/ipython.png' --[[/usr/share/applications/ipython.desktop]]},
        {'sandbox', (terminal or "xterm") .. " -e 'sandbox'", '/usr/share/pixmaps/sandbox.svg' --[[/usr/share/applications/sandbox.desktop]]},
      }
    }, {'附件', --[[/usr/share/desktop-directories/Arch-Accessories.directory]] {
        {'Fcitx 皮肤安装器', 'fcitx-skin-installer', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx-skin-installer.desktop]]},
        {'GVim', 'gvim -f', '/usr/share/pixmaps/gvim.png' --[[/usr/share/applications/gvim.desktop]]},
        {'Leafpad', 'leafpad', '/usr/share/pixmaps/leafpad.png' --[[/usr/share/applications/leafpad.desktop]]},
        {'Qalculate!', 'qalculate-gtk', '/usr/share/pixmaps/qalculate.png' --[[/usr/share/applications/qalculate-gtk.desktop]]},
        {'Shutter', 'shutter', '/usr/share/pixmaps/shutter.png' --[[/usr/share/applications/shutter.desktop]]},
        {'Vim', (terminal or "xterm") .. " -e 'vim'", '/usr/share/pixmaps/gvim.png' --[[/usr/share/applications/vim.desktop]]},
        {'Winetricks', 'winetricks --gui', '/usr/share/icons/hicolor/scalable/apps/winetricks.svg' --[[/usr/share/applications/winetricks.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/Adwaita/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/pixmaps/ipython.png' --[[/usr/share/applications/ipython.desktop]]},
        {'wxHexEditor', 'wxHexEditor', '/usr/share/pixmaps/wxHexEditor.png' --[[/usr/share/applications/wxHexEditor.desktop]]},
        {'关于 Xfce', 'xfce4-about', '/usr/share/icons/Adwaita/16x16/actions/help-about.png' --[[/usr/share/applications/xfce4-about.desktop]]},
        {'在已有的 GVIM 里打开', 'vv', '/usr/share/pixmaps/gvim.png' --[[/home/lilydjwg/.local/share/applications/vv.desktop]]},
        {'字体查看器', 'gnome-font-viewer', '/usr/share/icons/Adwaita/16x16/apps/preferences-desktop-font.png' --[[/usr/share/applications/org.gnome.font-viewer.desktop]]},
        {'字符映射表', 'gucharmap', '/usr/share/icons/Adwaita/16x16/apps/accessories-character-map.png' --[[/usr/share/applications/gucharmap.desktop]]},
        {'应用程序查找器', 'xfce4-appfinder', '/usr/share/icons/Adwaita/16x16/actions/edit-find.png' --[[/usr/share/applications/xfce4-appfinder.desktop]]},
        {'文件管理器', 'exo-open --launch FileManager', '/usr/share/icons/Adwaita/16x16/apps/system-file-manager.png' --[[/usr/share/applications/exo-file-manager.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
        {'磁盘', 'gnome-disks', '/usr/share/icons/hicolor/16x16/apps/gnome-disks.png' --[[/usr/share/applications/org.gnome.DiskUtility.desktop]]},
        {'终端模拟器', 'exo-open --launch TerminalEmulator', '/usr/share/icons/Adwaita/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/exo-terminal-emulator.desktop]]},
        {'运行程序...', 'xfce4-appfinder --collapsed', '/usr/share/icons/Adwaita/16x16/actions/system-run.png' --[[/usr/share/applications/xfce4-run.desktop]]},
      }
    }
  }
end
