# Mac Keyboard Mapping for Windows

AutoHotkey v1 脚本，在 Windows 上模拟 Mac 键盘快捷键习惯。

## 修饰键映射

| Windows 物理按键 | 映射为 Mac | 功能 |
|:---:|:---:|:---:|
| Alt | Command | 主要操作键 |
| Win | Option | 辅助修饰键 |
| Ctrl | Control | 保持不变 |

## 快捷键列表

### 文本编辑

| Mac 快捷键 | Windows 映射 | 功能 |
|:---:|:---:|:---:|
| Cmd+A | Alt+A | 全选 |
| Cmd+C | Alt+C | 复制 |
| Cmd+V | Alt+V | 粘贴 |
| Cmd+X | Alt+X | 剪切 |
| Cmd+Z | Alt+Z | 撤销 |
| Cmd+Shift+Z | Alt+Shift+Z | 重做 |
| Cmd+S | Alt+S | 保存 |
| Cmd+F | Alt+F | 查找 |
| Cmd+G | Alt+G | 查找下一个 |
| Cmd+Shift+G | Alt+Shift+G | 查找上一个 |
| Cmd+B | Alt+B | 加粗 |
| Cmd+I | Alt+I | 斜体 |
| Cmd+U | Alt+U | 下划线 |

### 窗口与应用管理

| Mac 快捷键 | Windows 映射 | 功能 |
|:---:|:---:|:---:|
| Cmd+Q | Alt+Q | 退出应用 |
| Cmd+W | Alt+W | 关闭标签页 |
| Cmd+T | Alt+T | 新建标签页 |
| Cmd+Shift+T | Alt+Shift+T | 恢复标签页 |
| Cmd+M | Alt+M | 最小化窗口 |
| Cmd+H | Alt+H | 显示桌面 |
| Cmd+N | Alt+N | 新建窗口 |
| Cmd+O | Alt+O | 打开文件 |
| Cmd+P | Alt+P | 打印 |
| Cmd+, | Alt+, | 打开设置 |
| Cmd+R | Alt+R | 刷新 |
| Cmd+Shift+R | Alt+Shift+R | 强制刷新 |
| Cmd+L | Alt+L | 聚焦地址栏 |

### 切换

| Mac 快捷键 | Windows 映射 | 功能 |
|:---:|:---:|:---:|
| Cmd+Tab | Alt+Tab | 切换应用 |
| Cmd+` | Alt+` | 切换同应用窗口 |

### 文本导航

| Mac 快捷键 | Windows 映射 | 功能 |
|:---:|:---:|:---:|
| Cmd+Left | Alt+Left | 行首 |
| Cmd+Right | Alt+Right | 行尾 |
| Cmd+Up | Alt+Up | 文档开头 |
| Cmd+Down | Alt+Down | 文档结尾 |
| Cmd+Shift+Left | Alt+Shift+Left | 选中到行首 |
| Cmd+Shift+Right | Alt+Shift+Right | 选中到行尾 |
| Cmd+Shift+Up | Alt+Shift+Up | 选中到文档开头 |
| Cmd+Shift+Down | Alt+Shift+Down | 选中到文档结尾 |

### 截图

| Mac 快捷键 | Windows 映射 | 功能 |
|:---:|:---:|:---:|
| Cmd+Shift+3 | Alt+Shift+3 | 截图 |
| Cmd+Shift+4 | Alt+Shift+4 | 截图 |

## 远程桌面兼容

脚本在以下远程桌面软件窗口激活时自动暂停映射，按键原样传递到远端：

- 网易UU远程 (GameViewer.exe)
- 向日葵 (SunloginClient.exe)
- ToDesk (ToDesk.exe)
- Windows RDP (mstsc.exe)
- AnyDesk (AnyDesk.exe)
- TeamViewer (TeamViewer.exe)

## 安装与使用

### 前提条件

- Windows 10/11
- [AutoHotkey v1.1](https://www.autohotkey.com/) 已安装

### 运行

双击 `mac-keyboard-mapping.ahk` 即可运行。

### 开机自启

脚本已在以下位置创建快捷方式，开机会自动运行：

```
%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\mac-keyboard-mapping.lnk
```

如需手动添加，将脚本快捷方式放入 `shell:startup` 文件夹即可。

## 自定义

- 如需添加更多远程桌面软件，在脚本中找到 `RemoteApps` 分组，添加一行：

```ahk
GroupAdd, RemoteApps, ahk_exe YourApp.exe
```

- 如需添加新的快捷键映射，在对应分类下添加：

```ahk
!y::Send ^y    ; Alt+Y -> Ctrl+Y (Cmd+Y -> Redo)
```

## 许可证

MIT
