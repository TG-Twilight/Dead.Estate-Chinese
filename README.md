# Dead Estate（死亡庄园）中文补丁

**简体中文** | [繁體中文](README.zh-TW.md)

<p align="center">
  <img src="images/cover.avif" width="100%" alt="主菜单">
</p>

Steam 版《Dead Estate》的非官方中文化补丁，含简体与繁体，对应游戏版本 v1.7.8。

除了完整翻译，补丁还附带一套可选的辅助功能（锁血、无限金钱、伤害倍率、地图全开等），以及几个只有本中文版才有的小彩蛋。不想要这些的话，安装时选「纯中文版」即可，游戏里不会出现任何额外的代码或选项。

**本补丁完全免费。** 如果你是花钱买到的，你被骗了，请向卖家退款并举报。

## 下载与安装

1. 下载补丁，二选一：
   - 从 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下载 `DeadEstate-Chinese-v*.zip`（推荐）；
   - 或在本页点 **Code → Download ZIP**，内容相同。
2. 把整个文件夹解压到游戏目录（Steam → 右键游戏 → 管理 → 浏览本地文件），放好后像这样：
   `Dead Estate\DeadEstate-Chinese-v1.2.8\安装补丁.bat`
3. 关闭游戏，运行安装程序：
   - 简体中文：`安装补丁.bat`
   - 繁体中文：`安裝補丁.bat`
4. 按提示选择：
   - **是否安装辅助功能**：直接按 Enter 安装；输入 N 安装纯中文版。
   - **是否解锁全部额外内容**（只在安装辅助功能时询问）：角色、服装、挑战、难度、相片墙、影片和音乐。不会解锁勋章或 Steam 成就。

想换语言或改装纯中文版，再运行一次对应的安装程序即可。

**还原英文**：运行 `还原原版.bat`（繁体为 `還原原版.bat`），或在 Steam 验证游戏文件完整性。

补丁不含游戏文件，安装程序只对你自己的 `data.win` 套用差分，套用前后都会校验 SHA-256，第一次安装时会把原版备份为 `data.win.en_backup`（请勿删除）。游戏更新后补丁会失效，安装程序会提示版本不符，请等待补丁更新。

## 翻译

- 约 4,600 条字符串，涵盖主线、商店与对话、道具与武器说明、成就、各角色结局与制作人员名单、Anya 模式、设置与教程等。
- 尽量保留原作轻松、爱吐槽的语气，以及各角色的说话风格：店员很呛，Cordelia 的妈妈很亲昵唠叨。
- 道具、武器、成就等专有名词在名称处写作「中文（English）」，方便对照英文攻略；句子里只写中文。人名、按键名称保留英文。
- 简体版由繁体版转换后再按大陆用语修正（例如「设置」「鼠标」「存档」）。

<p align="center">
  <img src="images/story.avif" width="49%" alt="剧情过场">
  <img src="images/gameplay.avif" width="49%" alt="游戏画面">
</p>
<p align="center">
  <img src="images/character-select.avif" width="49%" alt="角色选择">
  <img src="images/costume-select.avif" width="49%" alt="服装选择">
</p>

## 字体与界面

- 中文字形采用[方舟像素字体](https://github.com/TakWolf/ark-pixel-font) 12px，缺字由[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)补齐，与原作像素画风一致；原版英文字形完全不变。
- 大标题字体按原作比例放大，保持像素颗粒感。
- 重写了游戏的换行函数：中文可以在字与字之间断行，并遵守避头尾规则（标点不出现在行首）。
- 逐一修正因中文变宽、变高而超出画面的界面：商店说明框、勋章说明框、Anya 模式文字框、设置说明、阳台告示等。
- 部分画有英文的图片改为中文：手柄提示、觉醒结局影片菜单的仿真桌面。
- 主菜单与标题画面加上副标「死亡庄园」。

## 辅助功能（可选）

安装时选择安装辅助功能后，在游戏内「设置 → 辅助功能」打开。所有选项默认关闭，设置会自动保存。

<p align="center">
  <img src="images/settings.avif" width="49%" alt="设置菜单">
  <img src="images/assist-menu.avif" width="49%" alt="辅助功能">
</p>

| 页面 | 选项 | 作用 |
|---|---|---|
| 辅助功能 | 不死之身 | 锁血 |
| | 印钞机 | 金钱无限 |
| | 卫生纸自由 | 商店里的卫生纸与 Chunks 奖章视为 99 且购买不扣除；每层保证出现浴室电梯 |
| 军火库 | 火力全开 | 伤害倍率 x1～x10 |
| | 稳如泰山 | 无后坐力 |
| | 千里之外 | 射程 x1～x3 |
| | 枪法 | 子弹散布 0%～200%（100% 为原版） |
| | 信仰枪法 | 子弹追踪敌人的几率（关／15%／30%／50%／100%），效果同道具 Heatseeker |
| | 弹如雨下 | 射弹数量 x1～x3 |
| 身轻如燕 | 飞毛腿 | 移动速度倍率（Anya 模式也适用） |
| | 空中连跳 | 额外跳跃次数 |
| | Anya：赤脚也能跳 | 没有弹跳靴也能跳 |
| | Anya：僵尸也会跳 | 戴僵尸面具时也能跳 |
| | Anya：僵尸快跑 | 戴僵尸面具时不减速 |
| | 我是路痴 | 地图全开并附导航：主模式小地图标出你的位置和前往 Boss 房的路线；Anya 模式三个区域地图全开，游玩时右上角有常驻小地图 |
| 百宝箱 | 全收藏解锁 | 解锁全部额外内容，不动勋章与成就；关闭后回到原本进度 |
| | 四次元口袋 | 额外武器栏位 +0～+8 |
| | 爱与和平 | 商店店员互动（见下方） |
| | 奖杯照样拿 | 开着辅助功能也照常解锁 Steam 成就 |

**关于成就**：打开任何辅助功能后，到回主菜单之前获得的勋章照常记录（剧情进度不受影响），但默认不会解锁 Steam 成就；之后在不开辅助功能的情况下再次达成，就会正常解锁。如果你不在意，可以打开「奖杯照样拿」，之前暂缓的成就也会在回到主菜单时补上。

## 爱与和平

在「百宝箱」打开后，进商店时可以用鼠标点店员 Cordelia：

- 头和帽子、脸、胸口，以及她手上的东西（药水、扫帚、大锅、军火大衣、咖啡杯……），各有不同的台词和反应：小跳、摇头、晃动，还会飘出爱心和音符。
- 她的十几套造型（女巫、军火商、医生、银行、梦境、未来、神社等）各有专属台词。
- 她会记住你：摸头摸多了态度会变软；在那之后再乱戳，她也会有话要说。

纯属娱乐，不影响游戏。

<p align="center">
  <img src="images/love-and-peace.avif" width="32%" alt="爱与和平">
  <img src="images/love-and-peace-2.avif" width="32%" alt="爱与和平">
  <img src="images/shop-balcony.avif" width="32%" alt="阳台商店">
</p>

## 小彩蛋

- 商店的店员偶尔会提醒你一些事情。
- 秽物之间的马桶似乎很崇拜某位坐在黄金王座上的帝皇。据说一口气把它的东西全买光，会有神奇的事发生。

<p align="center">
  <img src="images/golden-throne.avif" width="70%" alt="黄金王座">
</p>

## 文件说明

| 文件 | 说明 |
|---|---|
| `安装补丁.bat` / `安裝補丁.bat` | 安装程序（简体／繁体） |
| `还原原版.bat` / `還原原版.bat` | 还原英文原版（简体／繁体） |
| `files/*.xdelta` | 差分文件：`zh_cn`、`zh_tw` 含辅助功能，`*_pure` 为纯中文版 |
| `files/manifest.json` | 各版本与原版 `data.win` 的 SHA-256 |
| `files/install.ps1` | 安装逻辑（PowerShell） |
| `files/xdelta3.exe` | 差分工具 [xdelta3](https://github.com/jmacd/xdelta-gpl) |
| `說明.txt`、`LICENSE.txt`、`licenses/` | 说明、许可摘要、第三方许可 |
| `images/` | README 截图 |

## 反馈问题

漏翻、错字或显示问题欢迎在 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 反馈，附上截图会更好处理。觉得好用的话，给仓库点个 Star 就是最大的支持。

## 致谢

- [方舟像素字体](https://github.com/TakWolf/ark-pixel-font)、[缝合像素字体](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻译与制作：TG-Twilight，与 Claude 协作完成。

## 许可

补丁内容采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans) 许可：**可免费转载，须注明作者与出处（本GitHub地址）；禁止商业用途（包括售卖与收费代装）及修改后分发**。

本项目为非官方补丁，与游戏开发商、发行商无关，请支持正版。
