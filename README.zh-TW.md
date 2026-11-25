# Dead Estate（死亡莊園）中文補丁

[简体中文](README.md) | **繁體中文**

<p align="center">
  <a href="https://afdian.com/a/AdsRule"><img src="images/sponsor-zh-tw.png" alt="在愛發電贊助作者"></a>
</p>

<p align="center">
  <img src="images/cover.avif" width="100%" alt="主選單">
</p>

Steam 版《Dead Estate》的非官方中文化補丁，含簡體與繁體，對應遊戲版本 v1.7.8。

除了完整翻譯，補丁還附帶一套可選的輔助功能（鎖血、無限金錢、傷害倍率、地圖全開等），以及幾個只有中文版才有的小彩蛋。不想要這些的話，安裝時選「純中文版」即可，遊戲裡不會出現任何額外的程式碼或選項。

**本補丁完全免費。** 如果你是花錢買到的，你被騙了，請向賣家退款並檢舉。

## 下載與安裝

1. 下載補丁，二選一：
   - 從 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下載 `DeadEstate-Chinese-v*.zip`（推薦）；
   - 或在本頁點 **Code → Download ZIP**，內容相同。
2. 把整個資料夾解壓縮到遊戲資料夾（Steam → 對遊戲按右鍵 → 管理 → 瀏覽本機檔案），放好後像這樣：
   `Dead Estate\DeadEstate-Chinese-v1.2.8\安裝補丁.bat`
3. 關閉遊戲，執行安裝程式：
   - 繁體中文：`安裝補丁.bat`
   - 簡體中文：`安装补丁.bat`
4. 依提示選擇：
   - **是否安裝輔助功能**：直接按 Enter 安裝；輸入 N 安裝純中文版。
   - **是否解鎖全部額外內容**（只在安裝輔助功能時詢問）：角色、服裝、挑戰、難度、相片牆、影片和音樂。不會解鎖勳章或 Steam 成就。

想換語言或改裝純中文版，再執行一次對應的安裝程式即可。

**還原英文**：執行 `還原原版.bat`（簡體為 `还原原版.bat`），或在 Steam 驗證遊戲檔案完整性。

補丁不含遊戲檔案，安裝程式只對你自己的 `data.win` 套用差分，套用前後都會驗證 SHA-256，第一次安裝時會把原版備份為 `data.win.en_backup`（請勿刪除）。遊戲更新後補丁會失效，安裝程式會提示版本不符，請等待補丁更新。

## 翻譯

- 約 4,600 條字串，涵蓋主線、商店與對話、道具與武器說明、成就、各角色結局與製作人員名單、Anya 模式、設定與教學等。
- 盡量保留原作輕鬆、愛吐槽的語氣，以及各角色的說話風格：店員很嗆，Cordelia 的媽媽很親暱碎念。
- 道具、武器、成就等專有名詞在名稱處寫作「中文（English）」，方便對照英文攻略；句子裡只寫中文。人名、按鍵名稱保留英文。
- 簡體版由繁體版轉換後再按大陸用語修正（例如「设置」「鼠标」「存档」）。

<p align="center">
  <img src="images/story.avif" width="49%" alt="劇情過場">
  <img src="images/gameplay.avif" width="49%" alt="遊戲畫面">
</p>
<p align="center">
  <img src="images/character-select.avif" width="49%" alt="角色選擇">
  <img src="images/costume-select.avif" width="49%" alt="服裝選擇">
</p>

## 字型與介面

- 中文字形採用[方舟像素字體](https://github.com/TakWolf/ark-pixel-font) 12px，缺字由[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)補齊，與原作像素畫風一致；原版英文字形完全不變。
- 大標題字型按原作比例放大，保持像素顆粒感。
- 重寫了遊戲的換行函式：中文可以在字與字之間斷行，並遵守避頭尾規則（標點不出現在行首）。
- 逐一修正因中文變寬、變高而超出畫面的介面：商店說明框、勳章說明框、Anya 模式文字框、設定說明、陽台告示等。
- 部分畫有英文的圖片改為中文：手把提示、覺醒結局影片選單的模擬桌面。
- 主選單與標題畫面加上副標「死亡莊園」。

## 輔助功能（可選）

安裝時選擇安裝輔助功能後，在遊戲內「設定 → 輔助功能」開啟。所有選項預設關閉，設定會自動儲存。

<p align="center">
  <img src="images/settings.avif" width="49%" alt="設定選單">
  <img src="images/assist-menu.avif" width="49%" alt="輔助功能">
</p>

| 頁面 | 選項 | 作用 |
|---|---|---|
| 輔助功能 | 不死之身 | 鎖血 |
| | 印鈔機 | 金錢無限 |
| | 衛生紙自由 | 商店裡的衛生紙與 Chunks 獎章視為 99 且購買不扣除；每層保證出現浴室電梯 |
| 軍火庫 | 火力全開 | 傷害倍率 x1～x10 |
| | 穩如泰山 | 無後坐力 |
| | 千里之外 | 射程 x1～x3 |
| | 槍法 | 子彈散布 0%～200%（100% 為原版） |
| | 信仰槍法 | 子彈追蹤敵人的機率（關／15%／30%／50%／100%），效果同道具 Heatseeker |
| | 彈如雨下 | 射彈數量 x1～x3 |
| 身輕如燕 | 飛毛腿 | 移動速度倍率（Anya 模式也適用） |
| | 空中連跳 | 額外跳躍次數 |
| | Anya：赤腳也能跳 | 沒有彈跳靴也能跳 |
| | Anya：僵屍也會跳 | 戴僵屍面具時也能跳 |
| | Anya：僵屍快跑 | 戴僵屍面具時不減速 |
| | 我是路癡 | 地圖全開並附導航：主模式小地圖標出你的位置和前往 Boss 房的路線；Anya 模式三個區域地圖全開，遊玩時右上角有常駐小地圖 |
| 百寶箱 | 全收藏解鎖 | 解鎖全部額外內容，不動勳章與成就；關閉後回到原本進度 |
| | 四次元口袋 | 額外武器欄位 +0～+8 |
| | 愛與和平 | 商店店員互動（見下方） |
| | 獎盃照樣拿 | 開著輔助功能也照常解鎖 Steam 成就 |

**關於成就**：開啟任何輔助功能後，到回主選單之前獲得的勳章照常記錄（劇情進度不受影響），但預設不會解鎖 Steam 成就；之後在不開輔助功能的情況下再次達成，就會正常解鎖。如果你不在意，可以開啟「獎盃照樣拿」，之前暫緩的成就也會在回到主選單時補上。

## 愛與和平

在「百寶箱」開啟後，進商店時可以用滑鼠點店員 Cordelia：

- 頭和帽子、臉、胸口，以及她手上的東西（藥水、掃帚、大鍋、軍火大衣、咖啡杯……），各有不同的台詞和反應：小跳、搖頭、晃動，還會飄出愛心和音符。
- 她的十幾套造型（女巫、軍火商、醫生、銀行、夢境、未來、神社等）各有專屬台詞。
- 她會記住你：摸頭摸多了態度會變軟；在那之後再亂戳，她也會有話要說。

純屬娛樂，不影響遊戲。

<p align="center">
  <img src="images/love-and-peace.avif" width="32%" alt="愛與和平">
  <img src="images/love-and-peace-2.avif" width="32%" alt="愛與和平">
  <img src="images/shop-balcony.avif" width="32%" alt="陽台商店">
</p>

## 小彩蛋

- 商店的店員偶爾會提醒你一些事情。
- 穢物之間的馬桶似乎很崇拜某位坐在黃金王座上的帝皇。據說一口氣把它的東西全買光，會有神奇的事發生。

<p align="center">
  <img src="images/golden-throne.avif" width="70%" alt="黃金王座">
</p>

## 檔案說明

| 檔案 | 說明 |
|---|---|
| `安裝補丁.bat` / `安装补丁.bat` | 安裝程式（繁體／簡體） |
| `還原原版.bat` / `还原原版.bat` | 還原英文原版（繁體／簡體） |
| `files/*.xdelta` | 差分檔案：`zh_cn`、`zh_tw` 含輔助功能，`*_pure` 為純中文版 |
| `files/manifest.json` | 各版本與原版 `data.win` 的 SHA-256 |
| `files/install.ps1` | 安裝邏輯（PowerShell） |
| `files/xdelta3.exe` | 差分工具 [xdelta3](https://github.com/jmacd/xdelta-gpl) |
| `說明.txt`、`LICENSE.txt`、`licenses/` | 說明、授權摘要、第三方授權 |
| `images/` | README 截圖 |

## 回報問題

漏翻、錯字或顯示問題歡迎在 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回報，附上截圖會更好處理。覺得好用的話，給倉庫點個 Star 就是最大的支持。

## 致謝

- [方舟像素字體](https://github.com/TakWolf/ark-pixel-font)、[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻譯與製作：TG-Twilight，與 Claude 協作完成。

## 授權

補丁內容採用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hant) 授權：**可免費轉載，須標明作者與出處（即本GitHub專案地址）；禁止商業用途（包括販售與收費代裝）及修改後再散布**。

本專案為非官方補丁，與遊戲開發商、發行商無關，請支持正版。
