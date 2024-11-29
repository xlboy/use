# MacOS

## Rime - 鼠须管 （输入法）

基于[`小鹤音形`](https:/flypy.com/)的基础上进行了多重词库的扩展（九重）

配置文件位于 `./static/Rime/*.yaml`，

> PS: 放入 `Rime 用户文件夹` 内即可（对自己说的 :)

## 必用工具

1. SteelSeries ExactMouse Tool（关闭`鼠标加速`）

   > Mac 14 之后，可在系统设置中关闭了（泪目…）

   文件位于 `./static/SteelSeries ExactMouse Tool.zip`

2. CatchMouse（光标切换）

   通过快捷键快速切换光标至某个屏幕上（多屏专用）

   文件位于 `./static/CatchMouse.zip`

3. MonitorControl（显示器亮度控制）

   轻松管理单个或多个的显示器亮度

   [下载地址](https://github.com/MonitorControl/MonitorControl)

4. Rectangle（窗口管理）

   [下载地址](https://github.com/rxhanson/Rectangle)

5. Hidden Bar（菜单栏管理器）

   控制隐藏菜单栏中的程序图标

   [下载地址](https://github.com/dwarvesf/hidden)

6. Manico（APP 切换器）

   [下载地址](https://www.macwk.com/soft/manico)

7. Captin（大小写切换悬浮窗提示）

   使用 VIM 中，可能会突然因为当前键盘的大小写键状态而愣住，需此软件来轻松得知具体的状态

   [下载地址](https://www.macwk.com/soft/captin)

8. Vimac（VIM 版的页面操作工具）

   [下载地址](https://vimacapp.com/)

9. iTerm（终端工具）

   [下载地址](https://iterm2.com/)

10. zsh 配置（oh-my-zsh）

    [下载地址](https://github.com/ohmyzsh/ohmyzsh)

11. fig（终端增强工具）

    [下载地址](https://fig.io/)

12. Hackintool（黑果专用的工具箱）

    [下载地址](https://www.macwk.com/soft/hackintool)

13. Better And Better（鼠标触控板手势增强）

    [下载地址](https://macwk.com/soft/better-and-better)

14. 超级右键（强大的 macOS 右键菜单工具）

    文件位于 `./static/iRightMouse.zip.zip`

15. Caffeinated（防止屏幕进入休眠的工具）

    因家中黑果进入休眠/息屏后，会出现概率性的死机情况（印象中，单纯设置系统的防止休眠是无济于事的）

    [下载地址](https://www.macwk.com/soft/caffeinated)

16. xScope（精确度量工具）

    [下载地址](https://www.macwk.com/soft/xscope)

17. Shottr（丰富的截图工具）

    在单一截图的基础上做了很多丰富的扩展，极大程度的减少了关于截图后的 `一系列操作`

    [下载地址](https://shottr.cc/)

18. KeyCastr（击键可视化工具）

    [下载地址](https://github.com/keycastr/keycastr)

19. Scoot（鼠标模拟工具）

    通过屏幕中的标记字符来模拟鼠标的一系列操作（光标定位、点击、双击等）

    [下载地址](https://github.com/mjrusso/scoot/)

20. Raycast（程序启动器）

    配置文件位于 `./static/Raycast.rayconfig`

    [下载地址](https://www.raycast.com/)

21. PlistEdit Pro

    文件位于 `./static/PlistEdit Pro.zip`

22. Karabiner-Elements（键盘映射工具）

    个人配置文件位于 `./static/karabiner.json`

    [下载地址](https://karabiner-elements.pqrs.org/)

23. Tiny RDM（Redis 管理工具）
    [下载地址](https://github.com/tiny-craft/tiny-rdm)

24. ProxyMan（代理工具）
    [下载地址](https://github.com/ProxymanApp/Proxyman)

## 其他设置

### Docker

#### 安装

```bash
brew install --cask docker
```

#### 子软件

- Mysql@5.7

```bash
docker pull liupeng0518/mysql:5.7-arm64

mkdir -p ~/.docker-local/mysql57
mkdir -p ~/.docker-local/mysql57/data
cd ~/.docker-local/mysql57

echo "[mysqld]
sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION" > my.cnf

docker run -d \
  --name mysql57 \
  -p 3306:3306 \
  -v ~/.docker-local/mysql57/my.cnf:/etc/mysql/conf.d/my.cnf \
  -v ~/.docker-local/mysql57/data:/var/lib/mysql \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  liupeng0518/mysql:5.7-arm64
```

- Redis

```bash
docker pull redis

mkdir -p ~/.docker-local/redis/data
cd ~/.docker-local/redis

echo "appendonly no" > ~/.docker-local/redis/redis.conf

docker run -d \
  --name redis \
  -p 6379:6379 \
  -v ~/.docker-local/redis/data:/data \
  -v ~/.docker-local/redis/redis.conf:/usr/local/etc/redis/redis.conf \
  redis redis-server /usr/local/etc/redis/redis.conf
```
