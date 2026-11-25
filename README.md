<div align="center">

# Dead Estate 中文化补丁

**简体中文** | [繁體中文](README.zh-TW.md)

为 Steam 版《Dead Estate》制作的非官方中文化补丁，含简体、繁体两个版本。

[![下载](https://img.shields.io/github/v/release/TG-Twilight/Dead.Estate-Chinese?label=%E4%B8%8B%E8%BD%BD&style=for-the-badge)](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest)
![游戏版本](https://img.shields.io/badge/%E6%B8%B8%E6%88%8F%E7%89%88%E6%9C%AC-v1.7.8-blue?style=for-the-badge)
![许可](https://img.shields.io/badge/%E8%AE%B8%E5%8F%AF-CC%20BY--NC--ND%204.0-lightgrey?style=for-the-badge)

</div>

---

## ✨ 亮点

### 🔤 与原作搭调的像素字体
中文字形使用 **[方舟像素字体](https://github.com/TakWolf/ark-pixel-font) 12px**，缺字由同系列的 **[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)** 补齐，和游戏的像素画风浑然一体，不会出现“像素游戏里冒出一行系统宋体”的违和感。
- 大号标题按整数倍放大，保持像素锐利；放大后的字体才加粗，12px 的小字保持清晰，不会糊成一团。
- 原版英文字形完整保留，只在后面追加中文字形，英文数字、按键提示的观感和原版一模一样。
- 标题画面也加上了中文副标题，陪着原版 Logo 一起抖动。

### 📖 覆盖全面的翻译
翻译表收录约 **4,600 条**字符串，尽可能把玩家看得到的地方都翻了：
- 主线流程：角色选择、HUD、道具、武器、诅咒、挑战书、成就、死亡与结算画面
- 所有商店与店主、楼层名称与转场提示、Boss 登场标题
- 零散对话：营火、通缉海报、梦境床、Cordelia 妈妈的厨房闲聊……
- 结局、演员表、三份制作人员名单、画廊、音乐播放器
- **Anya 模式**整套内容，包括原本只有英文字母的打字机字体
- 少数画在图片里的英文（例如手柄提示）也重新绘制成中文

刻意保留英文的只有人名、按键名称、除错讯息，以及会被游戏当作存档 key 的字符串，避免读不到旧存档。

### ✍️ 咬文嚼字过的译文
- **保留原作的吐槽味**：店员照样嘴毒，Cordelia 的妈妈照样亲昵又唠叨，不同角色说话各有个性。
- **专有名词中英对照**：道具、武器、Boss、成就的名称一律写成「中文（English）」，查英文攻略、Wiki 时一眼对得上；句子里只写中文，读起来不卡。
- **统一的译名表**：同一个东西全游戏只有一种叫法。
- **简体版不是一键繁转简**：会转换成大陆用语（例如「滑鼠」→「鼠标」），并人工修正转换出错的地方。
- 由程序拼接出来的句子（例如楼层生成提示、Anya 模式的拿取物品提示）逐一对照原始代码确认语序，必要时直接改写拼接逻辑，不出现“机翻味”的倒装。

### 🧩 用心处理中文排版
- 改写游戏的自动换行函数，**支持中文断行**，并遵守避头尾规则（句号、逗号不会跑到行首）。
- 实际游玩、逐一截图检查，修正中文变宽或变高后挤出画面、互相遮挡的界面（商店、Anya 模式文字框、存档提示等）。

### 🛡️ 安全、可还原
- 补丁**不含任何游戏文件**，安装时才把差分补丁套用到你自己的正版 `data.win` 上。
- 安装前会校验游戏版本，套用后会再校验结果（SHA-256），任何一步不对都不会改动你的文件。
- 首次安装会自动备份原版，随时可以一键还原英文版。
- 存档完全兼容：挑战进度等存档数据不受影响。

---

## 📥 安装

1. 到 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下载 `DeadEstate-Chinese-v*.zip`。
2. 打开游戏文件夹：Steam → 右键 Dead Estate → 管理 → 浏览本地文件。
3. 把压缩包**整个文件夹**解压到游戏文件夹里，结构如下：
   ```
   Dead Estate\
   ├── data.win
   ├── Dead Estate.exe
   └── DeadEstate-Chinese-v1.0.0\
       ├── 安裝中文補丁.bat
       └── 還原英文原版.bat
   ```
4. **关闭游戏**后运行 `安裝中文補丁.bat`，输入 `1`（繁体）或 `2`（简体）。
5. 启动游戏，标题画面看到“死亡庄园”就代表成功了。

> 想切换语言，再运行一次安装程序选另一个语言即可。

### 还原英文
运行 `還原英文原版.bat`，或在 Steam 对游戏点右键 → 属性 → 已安装文件 → **验证游戏文件的完整性**。

---

## ❓ 常见问题

**安装程序提示“不是补丁支持的版本”？**
补丁对应 Steam 版 **v1.7.8**（主菜单右下角可以看到版本号）。如果游戏已经更新，或装过其他 Mod，请先在 Steam 验证游戏文件完整性；若是游戏更新了，请等待补丁更新。

**游戏更新后中文不见了？**
游戏更新会覆盖 `data.win`。请下载对应新版本的补丁重新安装。

**杀毒软件报毒？**
压缩包里的 `xdelta3.exe` 是开源的差分补丁工具（[xdelta](https://github.com/jmacd/xdelta-gpl)），安装脚本是纯文本的 PowerShell，可以自行打开检查。

**发现漏翻、错字或显示问题？**
欢迎在 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回报，附上截图会更好找。

---

## 🙏 致谢

- **[方舟像素字体 Ark Pixel Font](https://github.com/TakWolf/ark-pixel-font)**、**[缝合像素字体 Fusion Pixel Font](https://github.com/TakWolf/fusion-pixel-font)** — by TakWolf，SIL Open Font License 1.1。没有这么好看的开源像素字体，就没有这个补丁的观感，非常感谢！
- **[UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)** — GameMaker 游戏的解包与修改工具（GPL-3.0），制作过程中使用。
- **[xdelta3](https://github.com/jmacd/xdelta-gpl)** — by Joshua MacDonald（GPL-2.0），用于套用差分补丁。
- 以及《Dead Estate》的原作团队，做出了这么好玩的游戏。

翻译与制作：**TG-Twilight**，与 AI 助手 **Claude** 一同熬夜完成 🌙

---

## 📜 许可

本补丁（译文与修改内容）采用 **[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans)** 许可：

- ✅ 可以免费转载、分享，但必须注明作者与本页链接
- ❌ 禁止任何商业用途（包括售卖、付费下载、收费代装）
- ❌ 禁止修改后再分发

**如果你是花钱买到这个补丁的，你被骗了**，请到本页免费下载。

本项目为玩家自制的非官方补丁，与游戏的开发商、发行商无关。补丁不含游戏本体，请支持正版。第三方组件依各自的许可发布，许可全文见压缩包内的 `licenses` 文件夹。
