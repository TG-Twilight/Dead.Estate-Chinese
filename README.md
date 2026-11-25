# Dead Estate 中文化补丁

**简体中文** | [繁體中文](README.zh-TW.md)

Steam 版《Dead Estate》的非官方中文化补丁，含简体与繁体，对应游戏版本 v1.7.8。

## 特点

- 中文字形采用[方舟像素字体](https://github.com/TakWolf/ark-pixel-font)，缺字由[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)补齐，与原作的像素画风一致；原版英文字形保持不变。
- 约 4,600 条字符串，涵盖主线、商店、对话、成就、结局与制作人员名单、Anya 模式等。人名、按键名称和存档相关的字符串保留英文。
- 尽量保留原作的语气和各角色的说话风格。道具、武器等专有名词写作「中文（English）」，方便对照英文资料。
- 支持中文自动换行，并调整了因中文变宽、变高而溢出画面的界面。
- 补丁不含游戏文件，安装时对你自己的 `data.win` 套用差分，前后都会校验，并自动备份原版。

## 安装

1. 从 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下载压缩包。
2. 把整个文件夹解压到游戏目录（Steam → 右键游戏 → 管理 → 浏览本地文件）。
3. 关闭游戏，运行 `安裝中文補丁.bat`，选择语言。

还原英文：运行 `還原英文原版.bat`，或在 Steam 验证游戏文件完整性。

游戏更新后补丁会失效，安装程序也会提示版本不符，请等待补丁更新。漏翻、错字或显示问题欢迎在 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回报。

## 致谢

- [方舟像素字体](https://github.com/TakWolf/ark-pixel-font)、[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻译与制作：TG-Twilight，与 Claude 协作完成。

## 许可

补丁内容采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans) 许可：可免费转载，须注明作者与出处；禁止商业用途（包括售卖与收费代装）及修改后分发。

本项目为非官方补丁，与游戏开发商、发行商无关，请支持正版。
