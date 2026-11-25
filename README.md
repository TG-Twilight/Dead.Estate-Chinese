# Dead Estate 中文化补丁

**简体中文** | [繁體中文](README.zh-TW.md)

Steam 版《Dead Estate》的非官方中文化补丁，含简体与繁体，对应游戏版本 v1.7.8。

## 特点

- 中文字形采用[方舟像素字体](https://github.com/TakWolf/ark-pixel-font)，缺字由[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)补齐，与原作的像素画风一致；原版英文字形保持不变。
- 约 4,600 条字符串，涵盖主线、商店、对话、成就、结局与制作人员名单、Anya 模式等。人名、按键名称和存档相关的字符串保留英文。
- 尽量保留原作的语气和各角色的说话风格。道具、武器等专有名词写作「中文（English）」，方便对照英文资料。
- 支持中文自动换行，并调整了因中文变宽、变高而溢出画面的界面。
- 可选的辅助功能（游戏内「设置 → 辅助功能」）：锁血、无限金钱、伤害倍率、追踪子弹、地图全开、Anya 跳跃、解锁全部额外内容等，全部默认关闭。开着辅助功能时获得的勋章默认不会解锁 Steam 成就。
- 「爱与和平」（辅助功能 → 百宝箱，默认关闭）：在商店里用鼠标点店员 Cordelia 的头、脸或手上的东西，她会有不同的台词和反应，摸头摸多了还会对你态度变好。纯属娱乐，不影响游戏。
- 店员和某个马桶藏了一些小彩蛋，留给你自己发现。
- 补丁不含游戏文件，安装时对你自己的 `data.win` 套用差分，前后都会校验，并自动备份原版。

## 安装

1. 从 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下载压缩包。
2. 把整个文件夹解压到游戏目录（Steam → 右键游戏 → 管理 → 浏览本地文件）。
3. 关闭游戏，运行 `安装补丁.bat`（简体中文；繁体中文请运行 `安裝補丁.bat`），并选择是否一并安装辅助功能。

还原英文：运行 `还原原版.bat`，或在 Steam 验证游戏文件完整性。

游戏更新后补丁会失效，安装程序也会提示版本不符，请等待补丁更新。漏翻、错字或显示问题欢迎在 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回报。

## 致谢

- [方舟像素字体](https://github.com/TakWolf/ark-pixel-font)、[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻译与制作：TG-Twilight，与 Claude 协作完成。

## 许可

补丁内容采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans) 许可：可免费转载，须注明作者与出处；禁止商业用途（包括售卖与收费代装）及修改后分发。

补丁完全免费。如果你是花钱买到的，你被骗了，请向卖家退款并举报。

本项目为非官方补丁，与游戏开发商、发行商无关，请支持正版。
