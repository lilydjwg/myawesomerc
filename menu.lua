xdgmenu = function(terminal)
  return {
    {'Internet', {
        {'Avahi SSH服务器浏览器', '/usr/bin/bssh', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/bssh.desktop]]},
        {'Avahi VNC服务器浏览器', '/usr/bin/bvnc', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/bvnc.desktop]]},
        {'Dropbox', 'dropboxd', '/usr/share/pixmaps/dropbox.png' --[[/usr/share/applications/dropbox.desktop]]},
        {'ELinks', (terminal or "xterm") .. " -e '/usr/bin/elinks'", '/usr/share/icons/gnome/16x16/mimetypes/html.png' --[[/usr/share/applications/elinks.desktop]]},
        {'Firefox', '/usr/lib/firefox/firefox', '/usr/share/icons/hicolor/16x16/apps/firefox.png' --[[/usr/share/applications/firefox.desktop]]},
        {'GmoteServer', '/opt/gmote/GmoteServer.sh', '/opt/gmote/gmote.png' --[[/usr/share/applications/gmote.desktop]]},
        {'Google Chrome', '/opt/google/chrome/google-chrome', '/usr/share/icons/hicolor/16x16/apps/google-chrome.png' --[[/usr/share/applications/google-chrome.desktop]]},
        {'Google Earth', '/opt/google/earth/free/google-earth', '/usr/share/icons/hicolor/16x16/apps/google-earth.png' --[[/usr/share/applications/google-earth.desktop]]},
        {'Opera', '/usr/bin/opera', '/usr/share/icons/hicolor/16x16/apps/opera-browser.png' --[[/usr/share/applications/opera-browser.desktop]]},
        {'Pidgin 互联网通讯程序', 'pidgin', '/usr/share/icons/hicolor/16x16/apps/pidgin.png' --[[/usr/share/applications/pidgin.desktop]]},
        {'Psi', 'psi', '/usr/share/icons/hicolor/16x16/apps/psi.png' --[[/usr/share/applications/psi.desktop]]},
        {'Skype', 'skype', '/usr/share/pixmaps/skype.png' --[[/usr/share/applications/skype.desktop]]},
        {'SpiderOak', 'SpiderOak', '/usr/share/pixmaps/SpiderOak.png' --[[/usr/share/applications/SpiderOak.desktop]]},
        {'TeamViewer 8', '/opt/teamviewer8/tv_bin/script/teamviewer', '/opt/teamviewer8/tv_bin/desktop/teamviewer.png' --[[/usr/share/applications/teamviewer.desktop]]},
        {'Transmission', 'transmission-gtk', '/usr/share/pixmaps/transmission.png' --[[/usr/share/applications/transmission-gtk.desktop]]},
        {'Wuala', 'wuala', '/usr/share/icons/hicolor/64x64/apps/wuala.png' --[[/home/lilydjwg/.local/share/applications/wuala.desktop]]},
        {'Zenmap', 'zenmap', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap.desktop]]},
        {'Zenmap (as root)', '/usr/share/zenmap/su-to-zenmap.sh', '/usr/share/zenmap/pixmaps/zenmap.png' --[[/usr/share/applications/zenmap-root.desktop]]},
        {'aLinkCreator', 'alc', '/usr/share/pixmaps/alc.xpm' --[[/usr/share/applications/alc.desktop]]},
        {'aMule', 'amule', '/usr/share/pixmaps/amule.xpm' --[[/usr/share/applications/amule.desktop]]},
        {'aMuleGUI', 'amulegui', '/usr/share/pixmaps/amulegui.xpm' --[[/usr/share/applications/amulegui.desktop]]},
        {'mutt', (terminal or "xterm") .. " -e 'mutt'" --[[/home/lilydjwg/.local/share/applications/mutt.desktop]]},
        {'wxCas', 'wxcas', '/usr/share/pixmaps/wxcas.xpm' --[[/usr/share/applications/wxcas.desktop]]},
        {'傲兔 (Qt)', 'hotot-qt', '/usr/share/icons/hicolor/22x22/apps/hotot.png' --[[/usr/share/applications/hotot-qt.desktop]]},
        {'阿里旺旺', 'AliWangWang', '/usr/share/pixmaps/AliWangWang.png' --[[/usr/share/applications/aliwangwang.desktop]]},
      }
    }, {'Wine', {
        {'Programs', {
            {'PDF-XChange PDF Viewer', {
                {'Live Update', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/Live\\ Update.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6721_LiveUpdate.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PDF-XChange PDF Viewer/Live Update.desktop]]},
                {'PDF-Viewer', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C055_PDFXCview.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PDF-XChange PDF Viewer/PDF-Viewer.desktop]]},
                {'PDF-Viewer License', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer\\ License.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/8E13_PDFVLicense.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PDF-XChange PDF Viewer/PDF-Viewer License.desktop]]},
                {'PDF-Viewer Users Manual', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer\\ Users\\ Manual.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2A78_PDFVManualSm.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PDF-XChange PDF Viewer/PDF-Viewer Users Manual.desktop]]},
                {'Uninstall', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/Uninstall.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/02A2_unins000.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PDF-XChange PDF Viewer/Uninstall.desktop]]},
              }
            }, {'PicPick', {
                {'PicPick', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/PicPick/PicPick.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5AD3_picpick.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/PicPick/PicPick.desktop]]},
              }
            }, {'Python 2.7', {
                {'IDLE (Python GUI)', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/IDLE\\ \\(Python\\ GUI\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Python 2.7/IDLE (Python GUI).desktop]]},
                {'Module Docs', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Module\\ Docs.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Python 2.7/Module Docs.desktop]]},
                {'Python (command line)', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Python\\ \\(command\\ line\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.2.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Python 2.7/Python (command line).desktop]]},
                {'Python Manuals', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Python\\ Manuals.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/937E_python275.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Python 2.7/Python Manuals.desktop]]},
                {'Uninstall Python', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Uninstall\\ Python.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2984_msiexec.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Python 2.7/Uninstall Python.desktop]]},
              }
            }, {'RegexBuddy 3', {
                {'RegexBuddy', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0C61_RegexBuddy.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/RegexBuddy 3/RegexBuddy.desktop]]},
                {'RegexBuddy Help', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy\\ Help.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0B8D_RegexBuddy.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/RegexBuddy 3/RegexBuddy Help.desktop]]},
                {'RegexBuddy Manual', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy\\ Manual.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0938_RegexBuddy.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/RegexBuddy 3/RegexBuddy Manual.desktop]]},
                {'Remove RegexBuddy 3', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/Remove\\ RegexBuddy\\ 3.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5D13_UnDeploy.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/RegexBuddy 3/Remove RegexBuddy 3.desktop]]},
              }
            }, {'Rosetta Stone', {
                {'Rosetta Stone Version 3', {
                    {'Rosetta Stone Version 3', 'env WINEPREFIX="/ldata/txtfiles/soft/wine4rosetta" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/soft/wine4rosetta/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Rosetta\\ Stone/Rosetta\\ Stone\\ Version\\ 3/Rosetta\\ Stone\\ Version\\ 3.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/D36F_MainIcon.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Rosetta Stone/Rosetta Stone Version 3/Rosetta Stone Version 3.desktop]]},
                    {'Visit www.RosettaStone.com', 'env WINEPREFIX="/ldata/txtfiles/soft/wine4rosetta" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/soft/wine4rosetta/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Rosetta\\ Stone/Rosetta\\ Stone\\ Version\\ 3/Visit\\ www.RosettaStone.com.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F0A2_www.RosettaStone.com.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Rosetta Stone/Rosetta Stone Version 3/Visit www.RosettaStone.com.desktop]]},
                  }
                }
              }
            }, {'Vim 7.4', {
                {'Help', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Help.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Help.desktop]]},
                {'Uninstall', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Uninstall.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3CF4_uninstall-gui.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Uninstall.desktop]]},
                {'Vim', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Vim.desktop]]},
                {'Vim Diff', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ Diff.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Vim Diff.desktop]]},
                {'Vim Read-only', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ Read-only.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Vim Read-only.desktop]]},
                {'Vim tutor', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ tutor.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6887_vimtutor.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/Vim tutor.desktop]]},
                {'gVim', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/gVim.desktop]]},
                {'gVim Diff', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Diff.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/gVim Diff.desktop]]},
                {'gVim Easy', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Easy.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/gVim Easy.desktop]]},
                {'gVim Read-only', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Read-only.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/Vim 7.4/gVim Read-only.desktop]]},
              }
            }, {'White Noise Sleep System', {
                {'Uninstall White Noise Sleep System', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/White\\ Noise\\ Sleep\\ System/Uninstall\\ White\\ Noise\\ Sleep\\ System.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0524_unins000.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/White Noise Sleep System/Uninstall White Noise Sleep System.desktop]]},
                {'White Noise Sleep System', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/White\\ Noise\\ Sleep\\ System/White\\ Noise\\ Sleep\\ System.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A60E_WNSS.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/White Noise Sleep System/White Noise Sleep System.desktop]]},
              }
            }, {'cz88.net', {
                {'ip', {
                    {'卸载 纯真IP地址数据库', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/卸载\\ 纯真IP地址数据库.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/677C_unins000.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/cz88.net/ip/卸载 纯真IP地址数据库.desktop]]},
                    {'纯真IP地址数据库', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真IP地址数据库.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/FBD4_ip.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/cz88.net/ip/纯真IP地址数据库.desktop]]},
                    {'纯真IP地址数据库 说明文件', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真IP地址数据库\\ 说明文件.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A0A0_说明.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/cz88.net/ip/纯真IP地址数据库 说明文件.desktop]]},
                    {'纯真网络', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真网络.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6EC5_纯真网络.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/cz88.net/ip/纯真网络.desktop]]},
                  }
                }
              }
            }, {'亿图图示专家', {
                {'亿图图示专家V7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/亿图图示专家V7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/83AF_Edraw.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/亿图图示专家/亿图图示专家V7.desktop]]},
                {'反安装亿图软件V7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/反安装亿图软件V7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/1E2B_Uninstall.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/亿图图示专家/反安装亿图软件V7.desktop]]},
                {'访问亿图网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/访问亿图网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E068_Edraw.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/亿图图示专家/访问亿图网站.desktop]]},
              }
            }, {'多玩', {
                {'YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/多玩/YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7886_YY.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/多玩/YY语音.desktop]]},
                {'卸载YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/多玩/卸载YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E8D6_Uninstall.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/多玩/卸载YY语音.desktop]]},
              }
            }, {'德语助手', {
                {'工具', {
                    {'使用帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/使用帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/189B_Dehelper.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/使用帮助.desktop]]},
                    {'学习记录管理器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/学习记录管理器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3B3A_ListMng.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/学习记录管理器.desktop]]},
                    {'德语助手官方网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/德语助手官方网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/83C0_德语助手官方网站.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/德语助手官方网站.desktop]]},
                    {'德语字符输入 DeKey', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/德语字符输入\\ DeKey.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5172_IntelliInput.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/德语字符输入 DeKey.desktop]]},
                    {'文章翻译朗读', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/文章翻译朗读.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E4B8_Parler.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/文章翻译朗读.desktop]]},
                    {'词库制作工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/词库制作工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/BC81_EuDicBuilder.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/词库制作工具.desktop]]},
                    {'迷你背单词', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/迷你背单词.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C232_Reciter.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/工具/迷你背单词.desktop]]},
                  }
                }, {'德语助手 Dehelper', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/德语助手\\ Dehelper.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7576_DeHelper.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/德语助手/德语助手 Dehelper.desktop]]},
              }
            }, {'汉王 PDF OCR', {
                {'卸载', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/卸载.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3624_SETUP.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/汉王 PDF OCR/卸载.desktop]]},
                {'帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/29F4_HWPDFOCR80.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/汉王 PDF OCR/帮助.desktop]]},
                {'汉王 PDF OCR', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/汉王\\ PDF\\ OCR.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/EB6B_HWPDFOCR80.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/汉王 PDF OCR/汉王 PDF OCR.desktop]]},
              }
            }, {'法语助手', {
                {'工具', {
                    {'使用帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/使用帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C779_FrHelper.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/使用帮助.desktop]]},
                    {'学习记录管理器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/学习记录管理器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6E32_ListMng.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/学习记录管理器.desktop]]},
                    {'文章翻译朗读 Parler', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/文章翻译朗读\\ Parler.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/EC74_Parler.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/文章翻译朗读 Parler.desktop]]},
                    {'法语助手官方网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/法语助手官方网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/B099_法语助手官方网站.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/法语助手官方网站.desktop]]},
                    {'法语字符输入 FrKey', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/法语字符输入\\ FrKey.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A3A8_Frhelper.FrKey.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/法语字符输入 FrKey.desktop]]},
                    {'词库制作工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/词库制作工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/B171_EuDicBuilder.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/词库制作工具.desktop]]},
                    {'迷你背单词', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/迷你背单词.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/973A_Reciter.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/工具/迷你背单词.desktop]]},
                  }
                }, {'法语助手 Frhelper', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/法语助手\\ Frhelper.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C095_FrHelper.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/法语助手/法语助手 Frhelper.desktop]]},
              }
            }, {'腾讯软件', {
                {'TM2009', {
                    {'卸载TM2009', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/腾讯软件/TM2009/卸载TM2009.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F101_NewShortcut1_D9D5B7D8DFD54C95AED145D0340B05CC.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/腾讯软件/TM2009/卸载TM2009.desktop]]},
                    {'腾讯TM2009', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/腾讯软件/TM2009/腾讯TM2009.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0252_NewShortcut3_1DB7EE0B2B0441489C00BD398A969231.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/腾讯软件/TM2009/腾讯TM2009.desktop]]},
                  }
                }
              }
            }, {'讯飞输入法 测试版', {
                {'卸载', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/卸载.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0401_Uninstall.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/讯飞输入法 测试版/卸载.desktop]]},
                {'意见反馈', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/意见反馈.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F62C_iFlyIMEUser.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/讯飞输入法 测试版/意见反馈.desktop]]},
                {'设置', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/设置.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6A75_iFlyIMEConfig.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/讯飞输入法 测试版/设置.desktop]]},
              }
            }, {'迅雷软件', {
                {'迅雷7', {
                    {'卸载迅雷7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/卸载迅雷7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C13F_uninstall_xl7.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷7/卸载迅雷7.desktop]]},
                    {'启动迅雷7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/启动迅雷7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/41A7_Thunder.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷7/启动迅雷7.desktop]]},
                    {'启动迅雷看看播放器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/启动迅雷看看播放器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7C1B_XMP.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷7/启动迅雷看看播放器.desktop]]},
                    {'迅雷下载诊断工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/迅雷下载诊断工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/27F0_XLDCOnLine.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷7/迅雷下载诊断工具.desktop]]},
                  }
                }, {'迅雷精简版', {
                    {'卸载迅雷精简版', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷精简版/卸载迅雷精简版.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/D134_Uninst.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷精简版/卸载迅雷精简版.desktop]]},
                    {'启动迅雷精简版', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷精简版/启动迅雷精简版.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/178C_ThunderMini.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/迅雷软件/迅雷精简版/启动迅雷精简版.desktop]]},
                  }
                }
              }
            }, {'NSIS (64-bit)', 'env WINEARCH=win64 WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/NSIS\\ \\(64-bit\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/967A_NSIS.0.png' --[[/home/lilydjwg/.local/share/applications/wine/Programs/NSIS (64-bit).desktop]]},
          }
        }, {'YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7886_YY.0.png' --[[/home/lilydjwg/.local/share/applications/wine/YY语音.desktop]]},
      }
    }, {'办公', {
        {'Adobe Reader 9', 'acroread', '/usr/share/pixmaps/acroread.png' --[[/usr/share/applications/acroread.desktop]]},
        {'Ascii Design', 'ascii-design', '/usr/share/pixmaps/ascii-design.png' --[[/usr/share/applications/ascii-design.desktop]]},
        {'FBReader', 'FBReader', '/usr/share/pixmaps/FBReader.png' --[[/usr/share/applications/FBReader.desktop]]},
        {'LibreOffice', 'libreoffice', '/usr/share/icons/gnome/16x16/apps/libreoffice-startcenter.png' --[[/usr/share/applications/libreoffice-startcenter.desktop]]},
        {'LibreOffice Base', 'libreoffice --base', '/usr/share/icons/gnome/16x16/apps/libreoffice-base.png' --[[/usr/share/applications/libreoffice-base.desktop]]},
        {'LibreOffice Calc', 'libreoffice --calc', '/usr/share/icons/gnome/16x16/apps/libreoffice-calc.png' --[[/usr/share/applications/libreoffice-calc.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'LibreOffice Impress', 'libreoffice --impress', '/usr/share/icons/gnome/16x16/apps/libreoffice-impress.png' --[[/usr/share/applications/libreoffice-impress.desktop]]},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'LibreOffice Writer', 'libreoffice --writer', '/usr/share/icons/gnome/16x16/apps/libreoffice-writer.png' --[[/usr/share/applications/libreoffice-writer.desktop]]},
        {'WPS 文字', '/usr/bin/wps', '/usr/share/icons/hicolor/48x48/apps/wps-office-wpsmain.png' --[[/usr/share/applications/wps-office-wps.desktop]]},
        {'WPS 演示', '/usr/bin/wpp', '/usr/share/icons/hicolor/48x48/apps/wps-office-wppmain.png' --[[/usr/share/applications/wps-office-wpp.desktop]]},
        {'WPS 表格', '/usr/bin/et', '/usr/share/icons/hicolor/48x48/apps/wps-office-etmain.png' --[[/usr/share/applications/wps-office-et.desktop]]},
        {'XMind', '/usr/share/xmind/XMind', '/usr/share/pixmaps/xmind.png' --[[/usr/share/applications/xmind.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura.desktop]]},
        {'Zathura', 'zathura' --[[/usr/share/applications/zathura-pdf-poppler.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
      }
    }, {'图像', {
        {'Blender', 'blender', '/usr/share/icons/hicolor/16x16/apps/blender.png' --[[/usr/share/applications/blender.desktop]]},
        {'Dia 图表编辑器', 'dia', '/usr/share/icons/hicolor/16x16/apps/dia.png' --[[/usr/share/applications/dia.desktop]]},
        {'FontForge', 'fontforge', '/usr/share/icons/hicolor/16x16/apps/fontforge.png' --[[/usr/share/applications/fontforge.desktop]]},
        {'GNU 图像处理程序', 'gimp-2.8', '/usr/share/icons/hicolor/16x16/apps/gimp.png' --[[/usr/share/applications/gimp.desktop]]},
        {'Inkscape', 'inkscape', '/usr/share/icons/hicolor/16x16/apps/inkscape.png' --[[/usr/share/applications/inkscape.desktop]]},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png' --[[/usr/share/applications/libreoffice-draw.desktop]]},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg' --[[/usr/share/applications/pencil.desktop]]},
        {'feh', 'feh', '/usr/share/feh/images/logo.svg' --[[/home/lilydjwg/.local/share/applications/feh.desktop]]},
        {'ida', 'ida', '/usr/share/pixmaps/ida.png' --[[/usr/share/applications/ida.desktop]]},
        {'图像查看器', 'eog', '/usr/share/icons/hicolor/16x16/apps/eog.png' --[[/usr/share/applications/eog.desktop]]},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png' --[[/usr/share/applications/evince-previewer.desktop]]},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png' --[[/usr/share/applications/evince.desktop]]},
      }
    }, {'影音', {
        {'Audacity', 'audacity', '/usr/share/pixmaps/audacity.xpm' --[[/usr/share/applications/audacity.desktop]]},
        {'Avidemux (GTK+)', 'avidemux2_gtk', '/usr/share/pixmaps/avidemux.png' --[[/usr/share/applications/avidemux-gtk.desktop]]},
        {'Clementine', 'clementine', '/usr/share/icons/hicolor/64x64/apps/application-x-clementine.png' --[[/usr/share/applications/clementine.desktop]]},
        {'FlashPlayer', 'flashplayer', '/usr/share/pixmaps/gflashplayer.png' --[[/usr/share/applications/flashplayer.desktop]]},
        {'MPlayer Media Player', 'mplayer', '/usr/share/pixmaps/mplayer.png' --[[/usr/share/applications/mplayer.desktop]]},
        {'PulseAudio Volume Control', 'pavucontrol', '/usr/share/icons/gnome/16x16/apps/multimedia-volume-control.png' --[[/usr/share/applications/pavucontrol.desktop]]},
        {'QT V4L2 test Utility', 'qv4l2', '/usr/share/icons/hicolor/16x16/apps/qv4l2.png' --[[/usr/share/applications/qv4l2.desktop]]},
        {'VLC media player', '/usr/bin/vlc --started-from-file', '/usr/share/icons/hicolor/16x16/apps/vlc.png' --[[/usr/share/applications/vlc.desktop]]},
        {'gtk-recordMyDesktop', 'gtk-recordMyDesktop', '/usr/share/pixmaps/gtk-recordmydesktop.png' --[[/usr/share/applications/gtk-recordmydesktop.desktop]]},
      }
    }, {'教育', {
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png' --[[/usr/share/applications/libreoffice-math.desktop]]},
        {'Stellarium nightsky renderer', 'stellarium', '/usr/share/pixmaps/stellarium.png' --[[/usr/share/applications/stellarium.desktop]]},
      }
    }, {'游戏', {
        {'Battle for Wesnoth', 'wesnoth', '/usr/share/pixmaps/wesnoth-icon.png' --[[/usr/share/applications/wesnoth.desktop]]},
        {'Battle for Wesnoth Map Editor', 'wesnoth -e', '/usr/share/pixmaps/wesnoth_editor-icon.png' --[[/usr/share/applications/wesnoth_editor.desktop]]},
        {'Chromium B.S.U.', 'chromium-bsu', '/usr/share/icons/hicolor/64x64/apps/chromium-bsu.png' --[[/usr/share/applications/chromium-bsu.desktop]]},
        {'Dosbox', 'dosbox', '/usr/share/pixmaps/dosbox.png' --[[/usr/share/applications/dosbox.desktop]]},
        {'Narcissu2-en', '/usr/bin/narcissu2-en', '/usr/share/pixmaps/narcissu2-en.png' --[[/usr/share/applications/narcissu2-en.desktop]]},
        {'TeeWorlds', 'teeworlds', '/usr/share/pixmaps/teeworlds.png' --[[/usr/share/applications/teeworlds.desktop]]},
      }
    }, {'科学和数学', {
        {'Celestia', 'celestia', '/usr/share/pixmaps/celestia.png' --[[/usr/share/applications/celestia.desktop]]},
        {'SAGE', (terminal or "xterm") .. " -e '/opt/sage/sage -notebook'", '/opt/sage/devel/ext-main/notebook/images/sageicon.png' --[[/usr/share/applications/SAGE-notebook.desktop]]},
      }
    }, {'系统工具', {
        {'Avahi Zero浏览器', '/usr/bin/avahi-discover', '/usr/share/icons/gnome/16x16/devices/network-wired.png' --[[/usr/share/applications/avahi-discover.desktop]]},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png' --[[/usr/share/applications/elflibviewer.desktop]]},
        {'Fcitx', 'fcitx', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx.desktop]]},
        {'GParted', '/usr/bin/gparted_polkit', '/usr/share/icons/hicolor/16x16/apps/gparted.png' --[[/usr/share/applications/gparted.desktop]]},
        {'Htop', (terminal or "xterm") .. " -e 'htop'", '/usr/share/pixmaps/htop.png' --[[/usr/share/applications/htop.desktop]]},
        {'LSHW', '/usr/sbin/gtk-lshw', '/usr/share/lshw/artwork/logo.svg' --[[/usr/share/applications/gtk-lshw.desktop]]},
        {'Oracle VM VirtualBox', 'VirtualBox', '/usr/share/icons/hicolor/16x16/mimetypes/virtualbox.png' --[[/usr/share/applications/virtualbox.desktop]]},
        {'TrueCrypt', 'truecrypt', '/usr/share/pixmaps/truecrypt.xpm' --[[/usr/share/applications/truecrypt.desktop]]},
        {'UXTerm', 'uxterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/uxterm.desktop]]},
        {'Wireshark', 'wireshark', '/usr/share/icons/hicolor/16x16/apps/wireshark.png' --[[/usr/share/applications/wireshark.desktop]]},
        {'XTerm', 'xterm', '/usr/share/pixmaps/xterm-color_48x48.xpm' --[[/usr/share/applications/xterm.desktop]]},
        {'Xfce 终端', 'xfce4-terminal', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/xfce4-terminal.desktop]]},
        {'dconf 系统配置编辑器', 'dconf-editor', '/usr/share/icons/hicolor/16x16/apps/dconf-editor.png' --[[/usr/share/applications/dconf-editor.desktop]]},
        {'磁盘使用情况分析器', 'baobab', '/usr/share/icons/hicolor/16x16/apps/baobab.png' --[[/usr/share/applications/baobab.desktop]]},
        {'终端', 'gnome-terminal', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png' --[[/usr/share/applications/gnome-terminal.desktop]]},
        {'配置编辑器', 'gconf-editor', '/usr/share/icons/hicolor/16x16/apps/gconf-editor.png' --[[/usr/share/applications/gconf-editor.desktop]]},
        {'键盘布局', 'gkbd-keyboard-display', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-keyboard.png' --[[/usr/share/applications/gkbd-keyboard-display.desktop]]},
      }
    }, {'编程', {
        {'Alleyoop', 'alleyoop', '/usr/share/icons/hicolor/16x16/apps/alleyoop.png' --[[/usr/share/applications/alleyoop.desktop]]},
        {'Android SDK', 'android', '/usr/share/pixmaps/android-sdk.png' --[[/usr/share/applications/android-sdk.desktop]]},
        {'CMake', 'cmake-gui', '/usr/share/pixmaps/CMakeSetup32.png' --[[/usr/share/applications/CMake.desktop]]},
        {'D-Feet', 'd-feet', '/usr/share/icons/hicolor/16x16/apps/d-feet.png' --[[/usr/share/applications/d-feet.desktop]]},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png' --[[/usr/share/applications/elflibviewer.desktop]]},
        {'Emacs', 'emacs', '/usr/share/icons/hicolor/16x16/apps/emacs.png' --[[/usr/share/applications/emacs.desktop]]},
        {'IPython Qt console', 'ipython qtconsole', '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png' --[[/usr/share/applications/ipython-qtconsole.desktop]]},
        {'Java Monitoring and Management Console', 'jconsole', '/usr/share/icons/hicolor/16x16/apps/sun-java.png' --[[/usr/share/applications/java-monitoring-and-management-console.desktop]]},
        {'Java VisualVM', 'jvisualvm', '/usr/share/icons/hicolor/16x16/apps/sun-java.png' --[[/usr/share/applications/java-visualvm.desktop]]},
        {'Meld', 'meld', '/usr/share/icons/hicolor/16x16/apps/meld.png' --[[/usr/share/applications/meld.desktop]]},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg' --[[/usr/share/applications/pencil.desktop]]},
        {'Qt4 Assistant', 'assistant-qt4', '/usr/share/icons/hicolor/128x128/apps/assistant-qt4.png' --[[/usr/share/applications/assistant-qt4.desktop]]},
        {'Qt4 Designer', 'designer-qt4', '/usr/share/icons/hicolor/128x128/apps/designer-qt4.png' --[[/usr/share/applications/designer-qt4.desktop]]},
        {'Qt4 Linguist', 'linguist-qt4', '/usr/share/icons/hicolor/16x16/apps/linguist-qt4.png' --[[/usr/share/applications/linguist-qt4.desktop]]},
        {'Qt4 QDbusViewer', 'qdbusviewer-qt4', '/usr/share/icons/hicolor/128x128/apps/qdbusviewer-qt4.png' --[[/usr/share/applications/qdbusviewer-qt4.desktop]]},
        {'SQLite Manager', 'xulrunner /usr/share/sqlite-manager/application.ini -f', '/usr/share/sqlite-manager/chrome/icons/default/default48.png' --[[/usr/share/applications/sqlite-manager.desktop]]},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/python.xpm' --[[/usr/share/applications/bpython.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png' --[[/usr/share/applications/ipython.desktop]]},
        {'sandbox', (terminal or "xterm") .. " -e 'sandbox'", '/usr/share/pixmaps/sandbox.svg' --[[/usr/share/applications/sandbox.desktop]]},
      }
    }, {'附件', {
        {'7-Zip FM', '7zFM', '/usr/share/icons/hicolor/32x32/apps/p7zip.png' --[[/usr/share/applications/7zFM.desktop]]},
        {'Fcitx 皮肤安装器', 'fcitx-skin-installer', '/usr/share/icons/hicolor/16x16/apps/fcitx.png' --[[/usr/share/applications/fcitx-skin-installer.desktop]]},
        {'FreeFileSync', 'FreeFileSync', '/usr/share/pixmaps/ffsicon.png' --[[/usr/share/applications/FreeFileSync.desktop]]},
        {'Graphical Disk Map', 'gdmap', '/usr/share/pixmaps/gdmap_icon.png' --[[/usr/share/applications/gdmap.desktop]]},
        {'IPython Qt console', 'ipython qtconsole', '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png' --[[/usr/share/applications/ipython-qtconsole.desktop]]},
        {'Keyboard', 'matchbox-keyboard', '/usr/share/pixmaps/matchbox-keyboard.png' --[[/usr/share/applications/inputmethods/matchbox-keyboard.desktop]]},
        {'Leafpad', 'leafpad', '/usr/share/pixmaps/leafpad.png' --[[/usr/share/applications/leafpad.desktop]]},
        {'Parcellite', 'parcellite', '/usr/share/pixmaps/parcellite.png' --[[/usr/share/applications/parcellite.desktop]]},
        {'Qalculate!', 'qalculate-gtk', '/usr/share/pixmaps/qalculate.png' --[[/usr/share/applications/qalculate-gtk.desktop]]},
        {'RealtimeSync', 'RealtimeSync', '/usr/share/pixmaps/rtsicon.png' --[[/usr/share/applications/RealtimeSync.desktop]]},
        {'Root 终端', 'gksu -l gnome-terminal', '/usr/share/pixmaps/gksu-root-terminal.png' --[[/usr/share/applications/gksu.desktop]]},
        {'ScreenRuler', 'screenruler', '/usr/share/pixmaps/screenruler-icon-32x32.png' --[[/usr/share/applications/gnome-screenruler.desktop]]},
        {'Screenkey', 'screenkey', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-keyboard-shortcuts.png' --[[/usr/share/applications/screenkey.desktop]]},
        {'Shutter', 'shutter', '/usr/share/pixmaps/shutter.png' --[[/usr/share/applications/shutter.desktop]]},
        {'Skype Call Recorder', 'skype-call-recorder', '/usr/share/icons/hicolor/128x128/apps/skype-call-recorder.png' --[[/usr/share/applications/skype-call-recorder.desktop]]},
        {'SpiderOak', 'SpiderOak', '/usr/share/pixmaps/SpiderOak.png' --[[/usr/share/applications/SpiderOak.desktop]]},
        {'Sublime Text', 'subl', '/usr/share/icons/hicolor/16x16/apps/sublime_text.png' --[[/usr/share/applications/sublime-text.desktop]]},
        {'Synergy', 'synergy', '/usr/share/pixmaps/synergy.png' --[[/usr/share/applications/synergy.desktop]]},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png' --[[/usr/share/applications/xgnokii.desktop]]},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/python.xpm' --[[/usr/share/applications/bpython.desktop]]},
        {'gVim', 'gvim', '/usr/share/pixmaps/gvim.png' --[[/usr/share/applications/gvim.desktop]]},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png' --[[/usr/share/applications/ipython.desktop]]},
        {'vv', 'vv', '/usr/share/pixmaps/gvim.png' --[[/home/lilydjwg/.local/share/applications/vv.desktop]]},
        {'wxHexEditor', 'wxHexEditor', '/usr/share/pixmaps/wxHexEditor.png' --[[/usr/share/applications/wxHexEditor.desktop]]},
        {'关于 Xfce', 'xfce4-about', '/usr/share/icons/gnome/16x16/actions/help-about.png' --[[/usr/share/applications/xfce4-about.desktop]]},
        {'字体查看器', 'gnome-font-viewer', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-font.png' --[[/usr/share/applications/gnome-font-viewer.desktop]]},
        {'字符映射表', 'gucharmap', '/usr/share/icons/gnome/16x16/apps/accessories-character-map.png' --[[/usr/share/applications/gucharmap.desktop]]},
        {'密码和密钥', '/usr/bin/seahorse', '/usr/share/icons/hicolor/16x16/apps/seahorse.png' --[[/usr/share/applications/seahorse.desktop]]},
        {'应用程序查找器', 'xfce4-appfinder', '/usr/share/icons/gnome/16x16/actions/gtk-find.png' --[[/usr/share/applications/xfce4-appfinder.desktop]]},
        {'文件', 'nautilus --new-window', '/usr/share/icons/gnome/16x16/apps/system-file-manager.png' --[[/usr/share/applications/nautilus.desktop]]},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png' --[[/usr/share/applications/stardict.desktop]]},
        {'磁盘', 'gnome-disks', '/usr/share/icons/hicolor/16x16/apps/gnome-disks.png' --[[/usr/share/applications/gnome-disks.desktop]]},
        {'运行程序...', 'xfce4-appfinder --collapsed', '/usr/share/icons/gnome/16x16/actions/gtk-execute.png' --[[/usr/share/applications/xfce4-run.desktop]]},
      }
    }
  }
end
