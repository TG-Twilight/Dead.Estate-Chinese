# Dead Estate 中文化補丁

[简体中文](README.md) | **繁體中文**

Steam 版《Dead Estate》的非官方中文化補丁，含繁體與簡體，對應遊戲版本 v1.7.8。

## 特色

- 中文字形採用[方舟像素字體](https://github.com/TakWolf/ark-pixel-font)，缺字由[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)補齊，與原作的像素畫風一致；原版英文字形保持不變。
- 約 4,600 條字串，涵蓋主線、商店、對話、成就、結局與製作人員名單、Anya 模式等。人名、按鍵名稱和存檔相關的字串保留英文。
- 盡量保留原作的語氣和各角色的說話風格。道具、武器等專有名詞寫作「中文（English）」，方便對照英文資料。
- 支援中文自動換行，並調整了因中文變寬、變高而超出畫面的介面。
- 補丁不含遊戲檔案，安裝時對你自己的 `data.win` 套用差分，前後都會驗證，並自動備份原版。

## 安裝

1. 從 [Releases](https://github.com/TG-Twilight/Dead.Estate-Chinese/releases/latest) 下載壓縮檔。
2. 把整個資料夾解壓縮到遊戲資料夾（Steam → 對遊戲按右鍵 → 管理 → 瀏覽本機檔案）。
3. 關閉遊戲，執行 `安裝中文補丁.bat`，選擇語言。

還原英文：執行 `還原英文原版.bat`，或在 Steam 驗證遊戲檔案完整性。

遊戲更新後補丁會失效，安裝程式也會提示版本不符，請等待補丁更新。漏翻、錯字或顯示問題歡迎到 [Issues](https://github.com/TG-Twilight/Dead.Estate-Chinese/issues) 回報。

## 致謝

- [方舟像素字體](https://github.com/TakWolf/ark-pixel-font)、[縫合像素字體](https://github.com/TakWolf/fusion-pixel-font)（TakWolf，SIL OFL 1.1）
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（GPL-3.0）
- [xdelta3](https://github.com/jmacd/xdelta-gpl)（GPL-2.0）

翻譯與製作：TG-Twilight，與 Claude 協作完成。

## 授權

補丁內容採用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hant) 授權：可免費轉載，須標明作者與出處；禁止商業用途（包括販售與收費代裝）及修改後再散布。

本專案為非官方補丁，與遊戲開發商、發行商無關，請支持正版。
