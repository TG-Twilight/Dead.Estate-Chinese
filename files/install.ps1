# Dead Estate 中文化補丁 安裝／還原
# 由四個 .bat 呼叫：安裝補丁.bat（繁）、安装补丁.bat（简）、還原原版.bat（繁）、还原原版.bat（简）
# 參數：-Mode install|restore  -Lang zh_tw|zh_cn（決定安裝的語言與畫面文字，不再詢問語言）
# 只對玩家自己的 data.win 套用差分檔；套用前後都驗證 SHA-256。
# manifest.langs 的鍵：zh_tw / zh_cn = 含輔助功能；zh_tw_pure / zh_cn_pure = 純中文版
param([string]$Mode = 'install', [string]$Lang = 'zh_tw')
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
if ($Lang -ne 'zh_cn') { $Lang = 'zh_tw' }
$here = $PSScriptRoot
$pkg = Split-Path -Parent $here
$manifest = Get-Content (Join-Path $here 'manifest.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$xdelta = Join-Path $here 'xdelta3.exe'
# 安裝程式共用部分：訊息表（繁／簡分開）、標題橫幅、兩個詢問。
# 開發版 scripts/install.ps1 直接 dot-source 這個檔案；發佈時 make_release.py 會把它嵌進 install.ps1 的 # __COMMON__ 位置。
# 使用前要先定義 $Lang（zh_tw / zh_cn）。
$repo = 'https://github.com/TG-Twilight/Dead.Estate-Chinese'

$M = @{
    zh_tw = @{
        title       = 'Dead Estate 中文化補丁'
        sub         = '死 亡 莊 園  ─  中文化補丁 v{0}（繁體中文）＋ 輔助功能（可選）'
        gamever     = '對應遊戲版本 v{0}（主選單右下角可查看）｜ 作者 TG-Twilight'
        repo        = '發佈頁：'
        free1       = '本補丁永久免費。如果你是付費購買或被收費代裝，你被騙了，'
        free2       = '請到發佈頁免費下載，並向平台檢舉賣家。'
        pressEnter  = '按 Enter 結束'
        notFound1   = '找不到 data.win。請把整個補丁資料夾放進遊戲資料夾（和 Dead Estate.exe 同一層）後再執行，'
        notFound2   = '或直接輸入遊戲資料夾路徑（Steam → 遊戲右鍵 → 管理 → 瀏覽本機檔案）：'
        askPath     = '遊戲資料夾路徑（直接按 Enter 離開）'
        checking    = '正在檢查 data.win…'
        isOrig      = '目前已經是英文原版，不需要還原。'
        restored    = '已還原英文原版。'
        cantRestore = '無法自動還原。請在 Steam 對遊戲按右鍵 → 內容 → 已安裝檔案 → 驗證遊戲檔案完整性。'
        backedUp    = '已備份原版：'
        wrongVer    = "這個 data.win 不是補丁支援的版本（補丁對應遊戲 v{0}）。`n可能是遊戲已更新，或檔案被其他模組改過。`n請先在 Steam 驗證遊戲檔案完整性；若遊戲已更新，請等待補丁更新。"
        assistQ     = '要一併安裝輔助功能嗎？'
        assistD     = @(
            '遊戲內「設定 → 輔助功能」：鎖血、無限金錢、傷害倍率、追蹤子彈、地圖全開、',
            'Anya 跳躍、解鎖全部額外內容……還有一些不能說的小彩蛋。',
            '全部預設關閉，開了才有效果；開著時獲得的勳章預設不會解鎖 Steam 成就。')
        assistP     = '直接按 Enter 安裝，輸入 N 只裝中文化'
        applying    = '正在套用補丁…'
        applyFail   = '套用補丁失敗（xdelta3 回傳錯誤）。'
        verifyFail  = '套用後的檔案驗證失敗，沒有做任何修改。'
        unlockQ     = '要解鎖全部額外內容嗎？'
        unlockD     = @(
            '角色、服裝、挑戰、難度、相片牆、影片、音樂一次全開，不用慢慢刷。',
            '不會解鎖勳章或 Steam 成就，之後可在「設定 → 輔助功能 → 百寶箱」關閉。')
        tease       = @(
            '對了，同一頁還有個「愛與和平」，打開之後就能和 Cordelia 大姐姐「互動」了哦～',
            '（進商店用滑鼠點點看，至於點哪裡……你懂的。）')
        unlockP     = '輸入 Y 解鎖，直接按 Enter 略過'
        unlockDone  = '已設定解鎖全部額外內容（下次啟動遊戲時生效）。'
        assistWhere = '輔助功能在遊戲內「設定 → 輔助功能」，全部預設關閉。'
        whatPure    = '繁體中文，純中文化'
        whatAssist  = '繁體中文＋輔助功能'
        done        = '安裝完成（{0}）。重新啟動遊戲即可。'
        doneHint    = '想加裝或移除輔助功能，再執行一次「安裝補丁.bat」；要還原英文請執行「還原原版.bat」。'
        report      = '漏翻、錯字或顯示問題歡迎回報：'
        error       = "發生錯誤：{0}`n遊戲是否還開著？請關閉遊戲後再試一次。"
    }
    zh_cn = @{
        title       = 'Dead Estate 汉化补丁'
        sub         = '死 亡 庄 园  ─  汉化补丁 v{0}（简体中文）＋ 辅助功能（可选）'
        gamever     = '对应游戏版本 v{0}（主菜单右下角可查看）｜ 作者 TG-Twilight'
        repo        = '发布页：'
        free1       = '本补丁永久免费。如果你是付费购买或被收费代装，你被骗了，'
        free2       = '请到发布页免费下载，并向平台举报卖家。'
        pressEnter  = '按 Enter 结束'
        notFound1   = '找不到 data.win。请把整个补丁文件夹放进游戏文件夹（和 Dead Estate.exe 同一层）后再运行，'
        notFound2   = '或直接输入游戏文件夹路径（Steam → 右键游戏 → 管理 → 浏览本地文件）：'
        askPath     = '游戏文件夹路径（直接按 Enter 退出）'
        checking    = '正在检查 data.win…'
        isOrig      = '当前已经是英文原版，无需还原。'
        restored    = '已还原英文原版。'
        cantRestore = '无法自动还原。请在 Steam 右键游戏 → 属性 → 已安装文件 → 验证游戏文件的完整性。'
        backedUp    = '已备份原版：'
        wrongVer    = "这个 data.win 不是补丁支持的版本（补丁对应游戏 v{0}）。`n可能是游戏已更新，或文件被其他模组改过。`n请先在 Steam 验证游戏文件完整性；若游戏已更新，请等待补丁更新。"
        assistQ     = '要一并安装辅助功能吗？'
        assistD     = @(
            '游戏内「设置 → 辅助功能」：锁血、无限金钱、伤害倍率、追踪子弹、地图全开、',
            'Anya 跳跃、解锁全部额外内容……还有一些不能说的小彩蛋。',
            '全部默认关闭，开了才有效果；开着时获得的勋章默认不会解锁 Steam 成就。')
        assistP     = '直接按 Enter 安装，输入 N 只装汉化'
        applying    = '正在应用补丁…'
        applyFail   = '应用补丁失败（xdelta3 返回错误）。'
        verifyFail  = '应用后的文件校验失败，没有做任何修改。'
        unlockQ     = '要解锁全部额外内容吗？'
        unlockD     = @(
            '角色、服装、挑战、难度、照片墙、视频、音乐一次全开，不用慢慢刷。',
            '不会解锁勋章或 Steam 成就，之后可在「设置 → 辅助功能 → 百宝箱」关闭。')
        tease       = @(
            '对了，同一页还有个「爱与和平」，打开之后就能和 Cordelia 大姐姐「互动」了哦～',
            '（进商店用鼠标点点看，至于点哪里……你懂的。）')
        unlockP     = '输入 Y 解锁，直接按 Enter 跳过'
        unlockDone  = '已设置解锁全部额外内容（下次启动游戏时生效）。'
        assistWhere = '辅助功能在游戏内「设置 → 辅助功能」，全部默认关闭。'
        whatPure    = '简体中文，纯汉化'
        whatAssist  = '简体中文＋辅助功能'
        done        = '安装完成（{0}）。重新启动游戏即可。'
        doneHint    = '想加装或移除辅助功能，再运行一次「安装补丁.bat」；要还原英文请运行「还原原版.bat」。'
        report      = '漏翻、错字或显示问题欢迎反馈：'
        error       = "发生错误：{0}`n游戏是否还开着？请关闭游戏后再试一次。"
    }
}
$t = $M[$Lang]

function Done($msg) { Write-Host ''; Write-Host $msg; Read-Host $t.pressEnter | Out-Null; exit }
function Sha($p) { (Get-FileHash -Algorithm SHA256 -LiteralPath $p).Hash.ToLower() }

function Banner($ver, $gameVer) {
    $art = @'
   ____   _____     _     ____     _____  ____   _____     _     _____  _____
  |  _ \ | ____|   / \   |  _ \   | ____|/ ___| |_   _|   / \   |_   _|| ____|
  | | | ||  _|    / _ \  | | | |  |  _|  \___ \   | |    / _ \    | |  |  _|
  | |_| || |___  / ___ \ | |_| |  | |___  ___) |  | |   / ___ \   | |  | |___
  |____/ |_____|/_/   \_\|____/   |_____||____/   |_|  /_/   \_\  |_|  |_____|
'@
    Write-Host ''
    Write-Host $art -ForegroundColor DarkRed
    Write-Host ''
    Write-Host ('      ' + ($t.sub -f $ver)) -ForegroundColor Cyan
    Write-Host ('      ' + ($t.gamever -f $gameVer))
    Write-Host ('      ' + $t.repo + $repo)
    Write-Host ('  ' + '-' * 74) -ForegroundColor DarkGray
    Write-Host ('      ' + $t.free1) -ForegroundColor Yellow
    Write-Host ('      ' + $t.free2) -ForegroundColor Yellow
    Write-Host ('  ' + '=' * 74) -ForegroundColor DarkGray
}

# 是否一併安裝輔助功能；直接按 Enter = 安裝
function AskAssist {
    Write-Host ''
    Write-Host $t.assistQ -ForegroundColor Cyan
    $t.assistD | ForEach-Object { Write-Host "  $_" }
    $a = (Read-Host $t.assistP).Trim()
    return ($a -notmatch '^[Nn]')
}

# 是否解鎖全部額外內容：在存檔資料夾留下旗標檔，遊戲啟動時讀取
function AskUnlockAll {
    Write-Host ''
    Write-Host $t.unlockQ -ForegroundColor Cyan
    $t.unlockD | ForEach-Object { Write-Host "  $_" }
    $t.tease | ForEach-Object { Write-Host "  $_" -ForegroundColor Magenta }
    $a = (Read-Host $t.unlockP).Trim()
    if ($a -notmatch '^[Yy]') { return '' }
    $dir = Join-Path $env:LOCALAPPDATA 'Dead_Estate'
    if (-not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }
    [IO.File]::WriteAllText((Join-Path $dir 'zh_unlock_all.txt'), '1')
    return $t.unlockDone + "`n"
}


try { $Host.UI.RawUI.WindowTitle = "$($t.title) v$($manifest.patch_version)" } catch {}
Banner $manifest.patch_version $manifest.game_version

# 找遊戲資料夾：補丁資料夾的上一層，或補丁資料夾本身
$gameDir = $null
foreach ($d in @((Split-Path -Parent $pkg), $pkg)) {
    if (Test-Path -LiteralPath (Join-Path $d 'data.win')) { $gameDir = $d; break }
}
while (-not $gameDir) {
    Write-Host ''
    Write-Host $t.notFound1
    Write-Host $t.notFound2
    $p = (Read-Host $t.askPath).Trim().Trim('"')
    if (-not $p) { exit }
    if (Test-Path -LiteralPath (Join-Path $p 'data.win')) { $gameDir = $p }
}
$target = Join-Path $gameDir 'data.win'
$backup = Join-Path $gameDir 'data.win.en_backup'
$orig = $manifest.orig_sha256
$patched = @($manifest.langs.PSObject.Properties | ForEach-Object { $_.Value.sha256 })

Write-Host ''
Write-Host $t.checking
$cur = Sha $target
$isPatched = $patched -contains $cur
$backupOk = (Test-Path -LiteralPath $backup) -and ((Sha $backup) -eq $orig)

try {
    if ($Mode -eq 'restore') {
        if ($cur -eq $orig) { Done $t.isOrig }
        if ($isPatched -and $backupOk) {
            Copy-Item -LiteralPath $backup $target -Force
            Done $t.restored
        }
        Done $t.cantRestore
    }

    if ($cur -eq $orig) {
        $src = $target
        if (-not $backupOk) { Copy-Item -LiteralPath $target $backup -Force; Write-Host ($t.backedUp + $backup) }
    } elseif ($isPatched -and $backupOk) {
        $src = $backup
    } else {
        Done ($t.wrongVer -f $manifest.game_version)
    }

    $assist = AskAssist
    $key = if ($assist) { $Lang } else { "${Lang}_pure" }
    $info = $manifest.langs.$key
    $tmp = Join-Path $gameDir 'data.win.zh_tmp'
    Write-Host ''
    Write-Host $t.applying
    & $xdelta -d -f -s $src (Join-Path $here $info.file) $tmp
    if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $tmp)) { Done $t.applyFail }
    if ((Sha $tmp) -ne $info.sha256) { Remove-Item -LiteralPath $tmp -Force; Done $t.verifyFail }
    Copy-Item -LiteralPath $tmp $target -Force
    Remove-Item -LiteralPath $tmp -Force
    $msg = ''
    $what = $t.whatPure
    if ($assist) {
        $msg = AskUnlockAll
        $msg += $t.assistWhere + "`n"
        $what = $t.whatAssist
    }
    Done ($msg + ($t.done -f $what) + "`n" + $t.doneHint + "`n" + $t.report + "$repo/issues")
} catch {
    Done ($t.error -f $_.Exception.Message)
}
