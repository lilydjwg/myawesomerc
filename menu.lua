xdgmenu = function(terminal)
  return {
    {'Internet', {
        {'Avahi SSH服务器浏览器', '/usr/bin/bssh', '/usr/share/icons/gnome/16x16/devices/network-wired.png'},
        {'Avahi VNC服务器浏览器', '/usr/bin/bvnc', '/usr/share/icons/gnome/16x16/devices/network-wired.png'},
        {'Dropbox', 'dropboxd', '/usr/share/pixmaps/dropbox.png'},
        {'ELinks', (terminal or "xterm") .. " -e '/usr/bin/elinks'", '/usr/share/icons/gnome/16x16/mimetypes/html.png'},
        {'Firefox', '/usr/lib/firefox/firefox', '/usr/share/icons/hicolor/16x16/apps/firefox.png'},
        {'GmoteServer', '/opt/gmote/GmoteServer.sh', '/opt/gmote/gmote.png'},
        {'Google Chrome', '/opt/google/chrome/google-chrome', '/usr/share/icons/hicolor/16x16/apps/google-chrome.png'},
        {'Google Earth', '/opt/google/earth/free/google-earth', '/usr/share/icons/hicolor/16x16/apps/google-earth.png'},
        {'Opera', '/usr/bin/opera', '/usr/share/icons/hicolor/16x16/apps/opera-browser.png'},
        {'Pidgin 互联网通讯程序', 'pidgin', '/usr/share/icons/hicolor/16x16/apps/pidgin.png'},
        {'Psi', 'psi', '/usr/share/icons/hicolor/16x16/apps/psi.png'},
        {'Skype', 'skype', '/usr/share/pixmaps/skype.png'},
        {'SpiderOak', 'SpiderOak', '/usr/share/pixmaps/SpiderOak.png'},
        {'TeamViewer 8', '/opt/teamviewer8/tv_bin/script/teamviewer', '/opt/teamviewer8/tv_bin/desktop/teamviewer.png'},
        {'Transmission', 'transmission-gtk', '/usr/share/pixmaps/transmission.png'},
        {'Wuala', 'wuala', '/usr/share/icons/hicolor/64x64/apps/wuala.png'},
        {'Zenmap', 'zenmap', '/usr/share/zenmap/pixmaps/zenmap.png'},
        {'Zenmap (as root)', '/usr/share/zenmap/su-to-zenmap.sh', '/usr/share/zenmap/pixmaps/zenmap.png'},
        {'aLinkCreator', 'alc', '/usr/share/pixmaps/alc.xpm'},
        {'aMule', 'amule', '/usr/share/pixmaps/amule.xpm'},
        {'aMuleGUI', 'amulegui', '/usr/share/pixmaps/amulegui.xpm'},
        {'mutt', (terminal or "xterm") .. " -e 'mutt'"},
        {'wxCas', 'wxcas', '/usr/share/pixmaps/wxcas.xpm'},
        {'傲兔 (Qt)', 'hotot-qt', '/usr/share/icons/hicolor/48x48/apps/hotot.png'},
        {'网络浏览器', 'exo-open --launch WebBrowser', '/usr/share/icons/gnome/16x16/apps/web-browser.png'},
        {'邮件阅读器', 'exo-open --launch MailReader'},
        {'阿里旺旺', 'AliWangWang', '/usr/share/pixmaps/AliWangWang.png'},
      }
    }, {'Wine', {
        {'Programs', {
            {'PDF-XChange PDF Viewer', {
                {'Live Update', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/Live\\ Update.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6721_LiveUpdate.0.png'},
                {'PDF-Viewer', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C055_PDFXCview.0.png'},
                {'PDF-Viewer License', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer\\ License.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/8E13_PDFVLicense.0.png'},
                {'PDF-Viewer Users Manual', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/PDF-Viewer\\ Users\\ Manual.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2A78_PDFVManualSm.0.png'},
                {'Uninstall', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/PDF-XChange\\ PDF\\ Viewer/Uninstall.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/02A2_unins000.0.png'},
              }
            }, {'PicPick', {
                {'PicPick', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/PicPick/PicPick.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5AD3_picpick.0.png'},
              }
            }, {'Python 2.7', {
                {'IDLE (Python GUI)', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/IDLE\\ \\(Python\\ GUI\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.0.png'},
                {'Module Docs', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Module\\ Docs.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.0.png'},
                {'Python (command line)', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Python\\ \\(command\\ line\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5CCF_python_icon.2.png'},
                {'Python Manuals', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Python\\ Manuals.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/937E_python275.0.png'},
                {'Uninstall Python', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Python\\ 2.7/Uninstall\\ Python.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2984_msiexec.0.png'},
              }
            }, {'RegexBuddy 3', {
                {'RegexBuddy', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0C61_RegexBuddy.0.png'},
                {'RegexBuddy Help', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy\\ Help.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0B8D_RegexBuddy.0.png'},
                {'RegexBuddy Manual', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/RegexBuddy\\ Manual.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0938_RegexBuddy.0.png'},
                {'Remove RegexBuddy 3', 'env WINEPREFIX="/home/lilydjwg/.wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/.wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/RegexBuddy\\ 3/Remove\\ RegexBuddy\\ 3.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5D13_UnDeploy.0.png'},
              }
            }, {'Rosetta Stone', {
                {'Rosetta Stone Version 3', {
                    {'Rosetta Stone Version 3', 'env WINEPREFIX="/ldata/txtfiles/soft/wine4rosetta" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/soft/wine4rosetta/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Rosetta\\ Stone/Rosetta\\ Stone\\ Version\\ 3/Rosetta\\ Stone\\ Version\\ 3.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/D36F_MainIcon.0.png'},
                    {'Visit www.RosettaStone.com', 'env WINEPREFIX="/ldata/txtfiles/soft/wine4rosetta" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/soft/wine4rosetta/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/Rosetta\\ Stone/Rosetta\\ Stone\\ Version\\ 3/Visit\\ www.RosettaStone.com.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F0A2_www.RosettaStone.com.0.png'},
                  }
                }
              }
            }, {'Vim 7.4', {
                {'Help', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Help.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png'},
                {'Uninstall', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Uninstall.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3CF4_uninstall-gui.0.png'},
                {'Vim', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png'},
                {'Vim Diff', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ Diff.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png'},
                {'Vim Read-only', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ Read-only.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/2E42_vim.0.png'},
                {'Vim tutor', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/Vim\\ tutor.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6887_vimtutor.0.png'},
                {'gVim', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png'},
                {'gVim Diff', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Diff.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png'},
                {'gVim Easy', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Easy.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png'},
                {'gVim Read-only', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64_test" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64_test/dosdevices/c:/users/Public/Start\\ Menu/Programs/Vim\\ 7.4/gVim\\ Read-only.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E28A_gvim.0.png'},
              }
            }, {'White Noise Sleep System', {
                {'Uninstall White Noise Sleep System', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/White\\ Noise\\ Sleep\\ System/Uninstall\\ White\\ Noise\\ Sleep\\ System.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0524_unins000.0.png'},
                {'White Noise Sleep System', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/White\\ Noise\\ Sleep\\ System/White\\ Noise\\ Sleep\\ System.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A60E_WNSS.0.png'},
              }
            }, {'cz88.net', {
                {'ip', {
                    {'卸载 纯真IP地址数据库', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/卸载\\ 纯真IP地址数据库.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/677C_unins000.0.png'},
                    {'纯真IP地址数据库', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真IP地址数据库.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/FBD4_ip.0.png'},
                    {'纯真IP地址数据库 说明文件', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真IP地址数据库\\ 说明文件.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A0A0_说明.0.png'},
                    {'纯真网络', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/cz88.net/ip/纯真网络.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6EC5_纯真网络.0.png'},
                  }
                }
              }
            }, {'亿图图示专家', {
                {'亿图图示专家V7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/亿图图示专家V7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/83AF_Edraw.0.png'},
                {'反安装亿图软件V7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/反安装亿图软件V7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/1E2B_Uninstall.0.png'},
                {'访问亿图网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/亿图图示专家/访问亿图网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E068_Edraw.0.png'},
              }
            }, {'多玩', {
                {'YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/多玩/YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7886_YY.0.png'},
                {'卸载YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/多玩/卸载YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E8D6_Uninstall.0.png'},
              }
            }, {'德语助手', {
                {'工具', {
                    {'使用帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/使用帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/189B_Dehelper.0.png'},
                    {'学习记录管理器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/学习记录管理器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3B3A_ListMng.0.png'},
                    {'德语助手官方网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/德语助手官方网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/83C0_德语助手官方网站.0.png'},
                    {'德语字符输入 DeKey', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/德语字符输入\\ DeKey.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/5172_IntelliInput.0.png'},
                    {'文章翻译朗读', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/文章翻译朗读.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/E4B8_Parler.0.png'},
                    {'词库制作工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/词库制作工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/BC81_EuDicBuilder.0.png'},
                    {'迷你背单词', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/工具/迷你背单词.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C232_Reciter.0.png'},
                  }
                }, {'德语助手 Dehelper', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/德语助手/德语助手\\ Dehelper.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7576_DeHelper.0.png'},
              }
            }, {'汉王 PDF OCR', {
                {'卸载', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/卸载.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/3624_SETUP.0.png'},
                {'帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/29F4_HWPDFOCR80.0.png'},
                {'汉王 PDF OCR', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/汉王\\ PDF\\ OCR/汉王\\ PDF\\ OCR.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/EB6B_HWPDFOCR80.0.png'},
              }
            }, {'法语助手', {
                {'工具', {
                    {'使用帮助', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/使用帮助.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C779_FrHelper.0.png'},
                    {'学习记录管理器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/学习记录管理器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6E32_ListMng.0.png'},
                    {'文章翻译朗读 Parler', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/文章翻译朗读\\ Parler.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/EC74_Parler.0.png'},
                    {'法语助手官方网站', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/法语助手官方网站.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/B099_法语助手官方网站.0.png'},
                    {'法语字符输入 FrKey', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/法语字符输入\\ FrKey.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/A3A8_Frhelper.FrKey.0.png'},
                    {'词库制作工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/词库制作工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/B171_EuDicBuilder.0.png'},
                    {'迷你背单词', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/工具/迷你背单词.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/973A_Reciter.0.png'},
                  }
                }, {'法语助手 Frhelper', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/法语助手/法语助手\\ Frhelper.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C095_FrHelper.0.png'},
              }
            }, {'腾讯软件', {
                {'TM2009', {
                    {'卸载TM2009', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/腾讯软件/TM2009/卸载TM2009.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F101_NewShortcut1_D9D5B7D8DFD54C95AED145D0340B05CC.0.png'},
                    {'腾讯TM2009', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/腾讯软件/TM2009/腾讯TM2009.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0252_NewShortcut3_1DB7EE0B2B0441489C00BD398A969231.0.png'},
                  }
                }
              }
            }, {'讯飞输入法 测试版', {
                {'卸载', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/卸载.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/0401_Uninstall.0.png'},
                {'意见反馈', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/意见反馈.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/F62C_iFlyIMEUser.0.png'},
                {'设置', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/讯飞输入法\\ 测试版/设置.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/6A75_iFlyIMEConfig.0.png'},
              }
            }, {'迅雷软件', {
                {'迅雷7', {
                    {'卸载迅雷7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/卸载迅雷7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/C13F_uninstall_xl7.0.png'},
                    {'启动迅雷7', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/启动迅雷7.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/41A7_Thunder.0.png'},
                    {'启动迅雷看看播放器', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/启动迅雷看看播放器.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7C1B_XMP.0.png'},
                    {'迅雷下载诊断工具', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷7/迅雷下载诊断工具.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/27F0_XLDCOnLine.0.png'},
                  }
                }, {'迅雷精简版', {
                    {'卸载迅雷精简版', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷精简版/卸载迅雷精简版.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/D134_Uninst.0.png'},
                    {'启动迅雷精简版', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/Public/Start\\ Menu/Programs/迅雷软件/迅雷精简版/启动迅雷精简版.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/178C_ThunderMini.0.png'},
                  }
                }
              }
            }, {'NSIS (64-bit)', 'env WINEPREFIX="/ldata/txtfiles/src/vim_win64/.wine64" wine C:\\\\windows\\\\command\\\\start.exe /Unix /ldata/txtfiles/src/vim_win64/.wine64/dosdevices/c:/users/lilydjwg/Start\\ Menu/Programs/NSIS\\ \\(64-bit\\).lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/967A_NSIS.0.png'},
          }
        }, {'YY语音', 'env WINEPREFIX="/home/lilydjwg/tmpfs/winetest/wine" wine C:\\\\windows\\\\command\\\\start.exe /Unix /home/lilydjwg/tmpfs/winetest/wine/dosdevices/c:/users/lilydjwg/Start\\ Menu/YY语音.lnk', '/home/lilydjwg/.local/share/icons/hicolor/16x16/apps/7886_YY.0.png'},
      }
    }, {'办公', {
        {'Adobe Reader 9', 'acroread', '/usr/share/pixmaps/acroread.png'},
        {'Ascii Design', 'ascii-design', '/usr/share/pixmaps/ascii-design.png'},
        {'FBReader', 'FBReader', '/usr/share/pixmaps/FBReader.png'},
        {'LibreOffice', 'libreoffice', '/usr/share/icons/gnome/16x16/apps/libreoffice-startcenter.png'},
        {'LibreOffice Base', 'libreoffice --base', '/usr/share/icons/gnome/16x16/apps/libreoffice-base.png'},
        {'LibreOffice Calc', 'libreoffice --calc', '/usr/share/icons/gnome/16x16/apps/libreoffice-calc.png'},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png'},
        {'LibreOffice Impress', 'libreoffice --impress', '/usr/share/icons/gnome/16x16/apps/libreoffice-impress.png'},
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png'},
        {'LibreOffice Writer', 'libreoffice --writer', '/usr/share/icons/gnome/16x16/apps/libreoffice-writer.png'},
        {'WPS 文字', '/usr/bin/wps', '/usr/share/icons/hicolor/48x48/apps/wps-office-wpsmain.png'},
        {'WPS 演示', '/usr/bin/wpp', '/usr/share/icons/hicolor/48x48/apps/wps-office-wppmain.png'},
        {'WPS 表格', '/usr/bin/et', '/usr/share/icons/hicolor/48x48/apps/wps-office-etmain.png'},
        {'XMind', '/usr/share/xmind/XMind', '/usr/share/pixmaps/xmind.png'},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png'},
        {'Zathura', 'zathura'},
        {'Zathura', 'zathura'},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png'},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png'},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png'},
      }
    }, {'图像', {
        {'Blender', 'blender', '/usr/share/icons/hicolor/16x16/apps/blender.png'},
        {'Dia 图表编辑器', 'dia', '/usr/share/icons/hicolor/16x16/apps/dia.png'},
        {'FontForge', 'fontforge', '/usr/share/icons/hicolor/16x16/apps/fontforge.png'},
        {'GNU 图像处理程序', 'gimp-2.8', '/usr/share/icons/hicolor/16x16/apps/gimp.png'},
        {'Inkscape', 'inkscape', '/usr/share/icons/hicolor/16x16/apps/inkscape.png'},
        {'LibreOffice Draw', 'libreoffice --draw', '/usr/share/icons/gnome/16x16/apps/libreoffice-draw.png'},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg'},
        {'feh', 'feh', '/usr/share/feh/images/logo.svg'},
        {'ida', 'ida', '/usr/share/pixmaps/ida.png'},
        {'图像查看器', 'eog', '/usr/share/icons/hicolor/16x16/apps/eog.png'},
        {'打印预览', 'evince-previewer', '/usr/share/icons/gnome/16x16/actions/document-print-preview.png'},
        {'文档查看器', 'evince', '/usr/share/icons/hicolor/16x16/apps/evince.png'},
      }
    }, {'影音', {
        {'Audacity', 'audacity', '/usr/share/pixmaps/audacity.xpm'},
        {'Avidemux (GTK+)', 'avidemux2_gtk', '/usr/share/pixmaps/avidemux.png'},
        {'Clementine', 'clementine', '/usr/share/icons/hicolor/64x64/apps/application-x-clementine.png'},
        {'FlashPlayer', 'flashplayer', '/usr/share/pixmaps/gflashplayer.png'},
        {'MPlayer Media Player', 'mplayer', '/usr/share/pixmaps/mplayer.png'},
        {'PulseAudio Volume Control', 'pavucontrol', '/usr/share/icons/gnome/16x16/apps/multimedia-volume-control.png'},
        {'QT V4L2 test Utility', 'qv4l2', '/usr/share/icons/hicolor/16x16/apps/qv4l2.png'},
        {'VLC media player', '/usr/bin/vlc --started-from-file', '/usr/share/icons/hicolor/16x16/apps/vlc.png'},
        {'gtk-recordMyDesktop', 'gtk-recordMyDesktop', '/usr/share/pixmaps/gtk-recordmydesktop.png'},
      }
    }, {'教育', {
        {'LibreOffice Math', 'libreoffice --math', '/usr/share/icons/gnome/16x16/apps/libreoffice-math.png'},
        {'Stellarium nightsky renderer', 'stellarium', '/usr/share/pixmaps/stellarium.png'},
      }
    }, {'游戏', {
        {'Battle for Wesnoth', 'wesnoth', '/usr/share/pixmaps/wesnoth-icon.png'},
        {'Battle for Wesnoth Map Editor', 'wesnoth -e', '/usr/share/pixmaps/wesnoth_editor-icon.png'},
        {'Chromium B.S.U.', 'chromium-bsu', '/usr/share/icons/hicolor/64x64/apps/chromium-bsu.png'},
        {'Dosbox', 'dosbox', '/usr/share/pixmaps/dosbox.png'},
        {'Narcissu2-en', '/usr/bin/narcissu2-en', '/usr/share/pixmaps/narcissu2-en.png'},
        {'TeeWorlds', 'teeworlds', '/usr/share/pixmaps/teeworlds.png'},
      }
    }, {'科学和数学', {
        {'Celestia', 'celestia', '/usr/share/pixmaps/celestia.png'},
        {'SAGE', (terminal or "xterm") .. " -e '/opt/sage/sage -notebook'", '/opt/sage/devel/ext-main/notebook/images/sageicon.png'},
      }
    }, {'系统工具', {
        {'Avahi Zero浏览器', '/usr/bin/avahi-discover', '/usr/share/icons/gnome/16x16/devices/network-wired.png'},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png'},
        {'Fcitx', 'fcitx', '/usr/share/icons/hicolor/16x16/apps/fcitx.png'},
        {'GParted', '/usr/bin/gparted_polkit', '/usr/share/icons/hicolor/16x16/apps/gparted.png'},
        {'Htop', (terminal or "xterm") .. " -e 'htop'", '/usr/share/pixmaps/htop.png'},
        {'LSHW', '/usr/sbin/gtk-lshw', '/usr/share/lshw/artwork/logo.svg'},
        {'Oracle VM VirtualBox', 'VirtualBox', '/usr/share/icons/hicolor/16x16/mimetypes/virtualbox.png'},
        {'TrueCrypt', 'truecrypt', '/usr/share/pixmaps/truecrypt.xpm'},
        {'UXTerm', 'uxterm', '/usr/share/pixmaps/xterm-color_48x48.xpm'},
        {'Wireshark', 'wireshark', '/usr/share/icons/hicolor/16x16/apps/wireshark.png'},
        {'XTerm', 'xterm', '/usr/share/pixmaps/xterm-color_48x48.xpm'},
        {'Xfce 终端', 'xfce4-terminal', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png'},
        {'dconf 系统配置编辑器', 'dconf-editor', '/usr/share/icons/hicolor/16x16/apps/dconf-editor.png'},
        {'电源统计', 'gnome-power-statistics', '/usr/share/icons/hicolor/16x16/apps/gnome-power-statistics.png'},
        {'磁盘使用分析器', 'baobab', '/usr/share/icons/hicolor/16x16/apps/baobab.png'},
        {'终端', 'gnome-terminal', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png'},
        {'配置编辑器', 'gconf-editor', '/usr/share/icons/hicolor/16x16/apps/gconf-editor.png'},
        {'键盘布局', 'gkbd-keyboard-display', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-keyboard.png'},
      }
    }, {'编程', {
        {'Alleyoop', 'alleyoop', '/usr/share/icons/hicolor/16x16/apps/alleyoop.png'},
        {'Android SDK', 'android', '/usr/share/pixmaps/android-sdk.png'},
        {'CMake', 'cmake-gui', '/usr/share/pixmaps/CMakeSetup32.png'},
        {'D-Feet', 'd-feet', '/usr/share/icons/hicolor/16x16/apps/d-feet.png'},
        {'ELF Library Viewer', 'elflibviewer -caption "ELF Library Viewer" --icon "elflibviewer"', '/usr/share/icons/hicolor/48x48/apps/elflibviewer.png'},
        {'Emacs', 'emacs', '/usr/share/icons/hicolor/16x16/apps/emacs.png'},
        {'IPython Qt console', 'ipython qtconsole', '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png'},
        {'Java Monitoring and Management Console', 'jconsole', '/usr/share/icons/hicolor/16x16/apps/sun-java.png'},
        {'Java VisualVM', 'jvisualvm', '/usr/share/icons/hicolor/16x16/apps/sun-java.png'},
        {'Meld', 'meld', '/usr/share/icons/hicolor/16x16/apps/meld.png'},
        {'Pencil', '/usr/bin/pencil', '/usr/share/pencil/skin/classic/icon.svg'},
        {'Qt4 Assistant', 'assistant-qt4', '/usr/share/icons/hicolor/128x128/apps/assistant-qt4.png'},
        {'Qt4 Designer', 'designer-qt4', '/usr/share/icons/hicolor/128x128/apps/designer-qt4.png'},
        {'Qt4 Linguist', 'linguist-qt4', '/usr/share/icons/hicolor/16x16/apps/linguist-qt4.png'},
        {'Qt4 QDbusViewer', 'qdbusviewer-qt4', '/usr/share/icons/hicolor/128x128/apps/qdbusviewer-qt4.png'},
        {'SQLite Manager', 'xulrunner /usr/share/sqlite-manager/application.ini -f', '/usr/share/sqlite-manager/chrome/icons/default/default48.png'},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/python.xpm'},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png'},
        {'sandbox', (terminal or "xterm") .. " -e 'sandbox'", '/usr/share/pixmaps/sandbox.svg'},
      }
    }, {'附件', {
        {'7-Zip FM', '7zFM', '/usr/share/icons/hicolor/32x32/apps/p7zip.png'},
        {'Fcitx 皮肤安装器', 'fcitx-skin-installer', '/usr/share/icons/hicolor/16x16/apps/fcitx.png'},
        {'FreeFileSync', 'FreeFileSync', '/usr/share/FreeFileSync/Help/html/ffsicon.png'},
        {'Graphical Disk Map', 'gdmap', '/usr/share/pixmaps/gdmap_icon.png'},
        {'IPython Qt console', 'ipython qtconsole', '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png'},
        {'Keyboard', 'matchbox-keyboard', '/usr/share/pixmaps/matchbox-keyboard.png'},
        {'Leafpad', 'leafpad', '/usr/share/pixmaps/leafpad.png'},
        {'Parcellite', 'parcellite', '/usr/share/pixmaps/parcellite.png'},
        {'Qalculate!', 'qalculate-gtk', '/usr/share/pixmaps/qalculate.png'},
        {'Root 终端', 'gksu -l gnome-terminal', '/usr/share/pixmaps/gksu-root-terminal.png'},
        {'ScreenRuler', 'screenruler', '/usr/share/pixmaps/screenruler-icon-32x32.png'},
        {'Screenkey', 'screenkey', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-keyboard-shortcuts.png'},
        {'Shutter', 'shutter', '/usr/share/pixmaps/shutter.png'},
        {'Skype Call Recorder', 'skype-call-recorder', '/usr/share/icons/hicolor/128x128/apps/skype-call-recorder.png'},
        {'SpiderOak', 'SpiderOak', '/usr/share/pixmaps/SpiderOak.png'},
        {'Sublime Text', 'subl', '/usr/share/icons/hicolor/16x16/apps/sublime_text.png'},
        {'Synergy', 'synergy', '/usr/share/pixmaps/synergy.png'},
        {'Xgnokii', 'xgnokii', '/usr/share/icons/gnome/16x16/devices/phone.png'},
        {'bpython', (terminal or "xterm") .. " -e '/usr/bin/bpython'", '/usr/share/pixmaps/python.xpm'},
        {'gVim', 'gvim', '/usr/share/pixmaps/gvim.png'},
        {'ipython', (terminal or "xterm") .. " -e 'ipython'", '/usr/share/icons/gnome/16x16/status/gnome-netstatus-idle.png'},
        {'vv', 'vv', '/usr/share/pixmaps/gvim.png'},
        {'wxHexEditor', 'wxHexEditor', '/usr/share/pixmaps/wxHexEditor.png'},
        {'关于 Xfce', 'xfce4-about', '/usr/share/icons/gnome/16x16/actions/help-about.png'},
        {'字体查看器', 'gnome-font-viewer', '/usr/share/icons/gnome/16x16/apps/preferences-desktop-font.png'},
        {'字符映射表', 'gucharmap', '/usr/share/icons/gnome/16x16/apps/accessories-character-map.png'},
        {'密码和密钥', '/usr/bin/seahorse', '/usr/share/icons/hicolor/16x16/apps/seahorse.png'},
        {'文件', 'nautilus --new-window', '/usr/share/icons/gnome/16x16/apps/system-file-manager.png'},
        {'文件管理器', 'exo-open --launch FileManager', '/usr/share/icons/gnome/16x16/apps/system-file-manager.png'},
        {'星际译王', 'stardict', '/usr/share/pixmaps/stardict.png'},
        {'磁盘', 'gnome-disks', '/usr/share/icons/hicolor/16x16/apps/gnome-disks.png'},
        {'终端模拟器', 'exo-open --launch TerminalEmulator', '/usr/share/icons/gnome/16x16/apps/utilities-terminal.png'},
      }
    }
  }
end
