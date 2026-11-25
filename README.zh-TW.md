<div align="center">

# Dead Estate 中文化補丁

[简体中文](README.md) | **繁體中文**

為 Steam 版《Dead Estate》製作的非官方中文化補丁，含繁體、簡體兩個版本。

[![下載](https://img.shields.io/github/v/release/TG-Twilight/Dead.Estate-Chinese?label=%E4%B8%8B%E8%BC%89&style=for-the-badge)](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest)
![遊戲版本](https://img.shields.io/badge/%E9%81%8A%E6%88%B2%E7%89%88%E6%9C%AC-v1.7.8-blue?style=for-the-badge)
![授權](https://img.shields.io/badge/%E6%8E%88%E6%AC%8A-CC%20BY--NC--ND%204.0-lightgrey?style=for-the-badge)

</div>

---

## ✨ 亮點

### 🔤 與原作搭調的像素字體
中文字形使用 **[方舟像素字體](https://github.com/TakWolf/ark-pixel-font) 12px**，缺字由同系列的 **[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)** 補齊，和遊戲的像素畫風渾然一體，不會出現「像素遊戲裡冒出一行系統新細明體」的違和感。
- 大字標題以整數倍放大，保持像素銳利；只有放大後的字型才加粗，12px 小字維持清晰，不會糊成一團。
- 原版英文字形完整保留，只在後面附加中文字形，英數字、按鍵提示的觀感和原版一模一樣。
- 標題畫面也加上了中文副標，陪著原版 Logo 一起抖動。

### 📖 覆蓋全面的翻譯
翻譯表收錄約 **4,600 條**字串，盡可能把玩家看得到的地方都翻了：
- 主線流程：角色選擇、HUD、道具、武器、詛咒、挑戰書、成就、死亡與結算畫面
- 所有商店與店主、樓層名稱與轉場提示、Boss 登場標題
- 零散對話：營火、通緝海報、夢境床、Cordelia 媽媽的廚房閒聊……
- 結局、演員表、三份製作人員名單、畫廊、音樂播放器
- **Anya 模式**整套內容，包括原本只有英文字母的打字機字型
- 少數畫在圖片裡的英文（例如手把提示）也重新繪製成中文

刻意保留英文的只有人名、按鍵名稱、除錯訊息，以及會被遊戲當成存檔 key 的字串，避免讀不到舊存檔。

### ✍️ 咬文嚼字過的譯文
- **保留原作的吐槽味**：店員照樣嘴賤，Cordelia 的媽媽照樣親暱又碎念，不同角色說話各有個性。
- **專有名詞中英對照**：道具、武器、Boss、成就的名稱一律寫成「中文（English）」，查英文攻略、Wiki 時一眼就對得上；句子裡只寫中文，讀起來不卡。
- **統一的譯名表**：同一個東西全遊戲只有一種叫法。
- **簡體版不是一鍵繁轉簡**：會轉成大陸用語（例如「滑鼠」→「鼠标」），並人工修正轉換出錯的地方。
- 由程式拼接出來的句子（例如樓層生成提示、Anya 模式的拿取物品提示）逐一對照原始程式碼確認語序，必要時直接改寫拼接邏輯，不會出現「機翻味」的倒裝。

### 🧩 用心處理中文排版
- 改寫遊戲的自動換行函式，**支援中文斷行**，並遵守避頭尾規則（句號、逗號不會跑到行首）。
- 實際遊玩、逐一截圖檢查，修正中文變寬、變高後擠出畫面或互相遮擋的介面（商店、Anya 模式文字框、存檔提示等）。

### 🛡️ 安全、可還原
- 補丁**不含任何遊戲檔案**，安裝時才把差分補丁套用到你自己的正版 `data.win` 上。
- 安裝前會檢查遊戲版本，套用後會再驗證結果（SHA-256），任何一步不對都不會動到你的檔案。
- 第一次安裝會自動備份原版，隨時可以一鍵還原英文版。
- 存檔完全相容：挑戰進度等存檔資料不受影響。

---

## 📥 安裝

1. 到 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下載 `DeadEstate-Chinese-v*.zip`。
2. 開啟遊戲資料夾：Steam → 對 Dead Estate 按右鍵 → 管理 → 瀏覽本機檔案。
3. 把壓縮檔裡的**整個資料夾**解壓縮到遊戲資料夾裡，結構如下：
   ```
   Dead Estate\
   ├── data.win
   ├── Dead Estate.exe
   └── DeadEstate-Chinese-v1.0.0\
       ├── 安裝中文補丁.bat
       └── 還原英文原版.bat
   ```
4. **關閉遊戲**後執行 `安裝中文補丁.bat`，輸入 `1`（繁體）或 `2`（簡體）。
5. 啟動遊戲，標題畫面看到「死亡莊園」就代表成功了。

> 想切換語言，再執行一次安裝程式選另一個語言即可。

### 還原英文
執行 `還原英文原版.bat`，或在 Steam 對遊戲按右鍵 → 內容 → 已安裝檔案 → **驗證遊戲檔案完整性**。

---

## ❓ 常見問題

**安裝程式提示「不是補丁支援的版本」？**
補丁對應 Steam 版 **v1.7.8**（主選單右下角可以看到版本號）。如果遊戲已經更新，或裝過其他 Mod，請先在 Steam 驗證遊戲檔案完整性；若是遊戲更新了，請等待補丁更新。

**遊戲更新後中文不見了？**
遊戲更新會覆蓋 `data.win`。請下載對應新版本的補丁重新安裝。

**防毒軟體報毒？**
壓縮檔裡的 `xdelta3.exe` 是開源的差分補丁工具（[xdelta](https://github.com/jmacd/xdelta-gpl)），安裝腳本是純文字的 PowerShell，可以自行打開檢查。

**發現漏翻、錯字或顯示問題？**
歡迎到 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回報，附上截圖會更好找。

---

## 🙏 致謝

- **[方舟像素字體 Ark Pixel Font](https://github.com/TakWolf/ark-pixel-font)**、**[縫合像素字體 Fusion Pixel Font](https://github.com/TakWolf/fusion-pixel-font)** — by TakWolf，SIL Open Font License 1.1。沒有這麼好看的開源像素字體，就沒有這個補丁的觀感，非常感謝！
- **[UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)** — GameMaker 遊戲的解包與修改工具（GPL-3.0），製作過程中使用。
- **[xdelta3](https://github.com/jmacd/xdelta-gpl)** — by Joshua MacDonald（GPL-2.0），用於套用差分補丁。
- 以及《Dead Estate》的原作團隊，做出這麼好玩的遊戲。

翻譯與製作：**TG-Twilight**，與 AI 助手 **Claude** 一同熬夜完成 🌙

---

## 📜 授權

本補丁（譯文與修改內容）採用 **[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hant)** 授權：

- ✅ 可以免費轉載、分享，但必須標明作者與本頁連結
- ❌ 禁止任何商業用途（包括販售、付費下載、收費代裝）
- ❌ 禁止修改後再散布

**如果你是花錢買到這個補丁的，你被騙了**，請到本頁免費下載。

本專案為玩家自製的非官方補丁，與遊戲的開發商、發行商無關。補丁不含遊戲本體，請支持正版。第三方元件依各自的授權發佈，授權全文見壓縮檔內的 `licenses` 資料夾。
