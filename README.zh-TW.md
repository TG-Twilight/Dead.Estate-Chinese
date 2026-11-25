# Dead Estate 中文化補丁

[简体中文](README.md) | **繁體中文**

Steam 版《Dead Estate》的非官方中文化補丁，含繁體與簡體，對應遊戲版本 v1.7.8。

## 特色

- 中文字形採用[方舟像素字體](https://github.com/TakWolf/ark-pixel-font)，缺字由[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)補齊，與原作的像素畫風一致；原版英文字形保持不變。
- 約 4,600 條字串，涵蓋主線、商店、對話、成就、結局與製作人員名單、Anya 模式等。人名、按鍵名稱和存檔相關的字串保留英文。
- 盡量保留原作的語氣和各角色的說話風格。道具、武器等專有名詞寫作「中文（English）」，方便對照英文資料。
- 支援中文自動換行，並調整了因中文變寬、變高而超出畫面的介面。
- 可選的輔助功能（遊戲內「設定 → 輔助功能」）：鎖血、無限金錢、傷害倍率、追蹤子彈、地圖全開、Anya 跳躍、解鎖全部額外內容等，全部預設關閉。開著輔助功能時獲得的勳章預設不會解鎖 Steam 成就。
- 「愛與和平」（輔助功能 → 百寶箱，預設關閉）：在商店裡用滑鼠點店員 Cordelia 的頭、臉或手上的東西，她會有不同的台詞和反應，摸頭摸多了還會對你態度變好。純屬娛樂，不影響遊戲。
- 店員和某個馬桶藏了一些小彩蛋，留給你自己發現。
- 補丁不含遊戲檔案，安裝時對你自己的 `data.win` 套用差分，前後都會驗證，並自動備份原版。

## 安裝

1. 從 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下載壓縮檔。
2. 把整個資料夾解壓縮到遊戲資料夾（Steam → 對遊戲按右鍵 → 管理 → 瀏覽本機檔案）。
3. 關閉遊戲，執行 `安裝補丁.bat`（繁體中文；簡體中文請執行 `安装补丁.bat`），並選擇是否一併安裝輔助功能。

還原英文：執行 `還原原版.bat`，或在 Steam 驗證遊戲檔案完整性。

遊戲更新後補丁會失效，安裝程式也會提示版本不符，請等待補丁更新。漏翻、錯字或顯示問題歡迎到 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回報。

## 致謝

- [方舟像素字體](https://github.com/TakWolf/ark-pixel-font)、[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻譯與製作：TG-Twilight，與 Claude 協作完成。

## 授權

補丁內容採用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hant) 授權：可免費轉載，須標明作者與出處；禁止商業用途（包括販售與收費代裝）及修改後再散布。

補丁完全免費。如果你是花錢買到的，你被騙了，請向賣家退款並檢舉。

本專案為非官方補丁，與遊戲開發商、發行商無關，請支持正版。
