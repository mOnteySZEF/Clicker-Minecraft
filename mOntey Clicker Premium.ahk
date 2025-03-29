;Made with ❤️ by monteyszef | © 2025 Copyright





;logowanie
cPassword = mOntey
nAttempt = 1

PWreturn:
InputBox, uPassword, Logowanie, Wpisz tu Hasło:, Hide, 130, 130

nAttempt += 1
if (nAttempt = 3)
   exitapp

; Basic logic.
If (uPassword == cPassword) ; == is case sensitive, = is case insensitive.
MsgBox, Zalogowano Pomyślnie :) 
Else
   {
      MsgBox, Błąd :(
      gosub,PWreturn 
   }



;Podstawy
#NoEnv
#SingleInstance Force

Gui, color, d9d9d9
Gui, Font, S10 cBlack, Bahnschrift Condensed
Gui Add, Button, x21 y8 w121 h46 gFree, Wersja Free
Gui Add, Button, x21 y61 w121 h46 gPremium, Wersja Premium
Gui Add, Button, x21 y114 w121 h46 gtimberman, Timberman keybinder
Gui Add, Button, x42 y181 w80 h23 ginfoG, Info
Gui, Show, w167 h220, INFO
Return
infoG:
MSGbox, Clicker created by mOntey! Wybierz wersje clickera :)
return


return
SendMode Input
FileCreateDir, C:\Users\%A_Username%\AppData\Roaming\mOntey Clicker\config
FileCreateDir, C:\Users\%A_Username%\AppData\Roaming\mOntey Clicker\gui
FileCreateDir, C:\Users\%A_Username%\AppData\Roaming\mOntey Clicker\PNGs
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1
SetBatchLines, -1
SetMouseDelay, -1
SetKeyDelay, 0
hotkey, F10, power
pow3r = 1
IniRead, set1, config.ini, przyciski, key1
IniRead, punch22, config.ini, przyciski, key2
IniRead, punch3, config.ini, przyciski, key3
IniRead, miecz6, config.ini, przyciski, key6
IniRead, wedka7, config.ini, przyciski, key7
IniRead, wedka8, config.ini, przyciski, key8
IniRead, perla9, config.ini, przyciski, key9
IniRead, perla10, config.ini, przyciski, key10
IniRead, water11, config.ini, przyciski, key11
IniRead, water12, config.ini, przyciski, key12
IniRead, snow15, config.ini, przyciski, key15
IniRead, snow16, config.ini, przyciski, key16
IniRead, scale17, config.ini, przyciski, key17
IniRead, scale18, config.ini, przyciski, key18
Gui,+AlwaysOnTop
Gui, color, d9d9d9


przejdz:
Gui,+AlwaysOnTop
GUI, Destroy
Gui, color, d9d9d9
Gui, Font, S10 cBlack, Bahnschrift Condensed
Gui Add, Text, x80 y50 w125 h50, Kopanie 6/3/3
Gui Add, Text, x430 y50 w125 h50, Kopanie 5/3/3
Gui Add, Text, x380 y93 w125 h50, ON
Gui, Add, Hotkey, x400 y93 w125 h21 vkopanieon, F9
Gui Add, Text, x380 y123 w125 h50, OFF
Gui, Add, Hotkey, x400 y123 w125 h21 vkopanieoff, F8
Gui Add, Text, x430 y153 w125 h50, Komendy
Gui, Add, Edit, x400 y183 w125 h21 vkomendajeden, /repair
Gui, Add, Edit, x400 y213 w125 h21 vkomendadwa, /sellall
Gui, Add, Edit, x400 y243 w125 h21 vkomendatrzy, /cx
Gui Add, Button, x200 y380 w200 h50 gGO, &Odpal kopanie

Gui Add, Text, x40 y93 w125 h50, ON
Gui, Add, Hotkey, x60 y93 w125 h21 vonkopanie, F9
Gui Add, Text, x40 y123 w125 h50, OFF
Gui, Add, Hotkey, x60 y123 w125 h21 voffkopanie, F8
Gui Add, Text, x80 y153 w125 h50, Komendy
Gui, Add, Edit,	  vSzerokosc center Number X150 Y315 W15 H15 limit2  -vscroll -E0x200,%Szerokosc% 2
Gui, Add, Edit,   vDlugosc center Number x150 y285 w15 h15 limit2  -vscroll -E0x200,%Dlugosc% 10
Gui, Add, Edit,  vKilofslot center Number x150 y345 w15 h15 limit2 -vscroll -E0x200,%Kilofslot% 1
Gui, Add, Edit,  vCzat center x150 y255 w15 h15 limit1 -vscroll -E0x200,%Czat% T
Gui, Add, Checkbox,  vCzyJesc x150 y365 w15 h20 checked%CzyJesc% -vscroll -E0x200,
Gui, Add, Edit,  vJedzco center Number x150 y430 w15 h15 limit2 -vscroll -E0x200,%Jedzco% 6
Gui, Add, Edit,  vJedzslot center Number x150 y395 w15 h15 limit2 -vscroll -E0x200,%Jedzslot% 2
Gui, Add, Checkbox,  vpiontka X5 Y15 W13 H13 checked%piontka% -vscroll -E0x200,%piontka%
Gui, Add, Edit, vcmdcmd1 hidden center X75 Y185 W70 H14  -vscroll -E0x200 ,%cmdcmd1% Komenda
Gui, Add, Edit, vcmdedit1 center Number Number X150 Y185  W20 H14 limit3 -vscroll -E0x200 ,%cmdedit1% 0
Gui, Add, Edit, vcmdcmd2 hidden center X75 Y205 W70 H14 -vscroll -E0x200,%cmdcmd2% Komenda
Gui, Add, Edit, vcmdedit2 center Number Number X150 Y205 W20 H14 limit3 -vscroll -E0x200,%cmdedit2% 0
Gui, Add, Edit, vcmdcmd3 hidden center X75 Y225 W70 H14 -vscroll -E0x200,%cmdcmd3% Komenda
Gui, Add, Edit, vcmdedit3 center Number X150 Y225 W20 H14 limit3 -vscroll -E0x200,%cmdedit3% 0
Gui, Add, Edit, hidden  X180 y135 W1 H1
Gui, Add, Edit, hidden vcmdCount center 470 550 W25 H25 limit3 -vscroll -E0x200 ,
Gui, Add, UpDown,  gcmdCountChange  Range1-3 -vscroll -E0x200,%cmdCount%
Gosub, cmdCountChange
Gui, Add, Text, x80 y255 w125 h21, Przycisk czatu
Gui, Add, Text, x90 y285 w125 h21, Długość
Gui, Add, Text, x90 y315 w125 h21, Szerokość
Gui, Add, Text, x80 y345 w125 h21, Slot kilofu
Gui, Add, Text, x80 y395 w125 h21, Slot jedzenia
Gui, Add, Text, x80 y430 w125 h21, Co ile okrążen
Gui, Add, Text, x60 y365 w125 h21, Czy włączyć jedzenie



Gui, Show, w650 h450, mOntey Clicker

return
przejdz1:
Gui,+AlwaysOnTop
GUI, Destroy
Gui, color, d9d9d9
Gui, Font, S30 cRed, Bahnschrift Condensed
Gui Add, Text, x250 y85 w230 h80, NIEDŁUGO...
Gui, Show, w650 h450, mOntey Clicker
return

Free:
Gui,+AlwaysOnTop
GUI, Destroy
Gui, color, d9d9d9
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Tab3,x0 y0 w650 h450, Informacje|Makro|Nowości|FAQ|Odpal Skrypt|
Gui, Show, w650 h450, mOntey Clicker

Gui, Tab,  Informacje
Gui, Color, Black
Gui, Font, S28 cWhite, Yu Gothic Light
Gui, Add, Text, x170 y85 w230 h80, mOnteyClicker
Gui, Font, S11 cWhite, Gothic Light
Gui, Add, Text, x200 y130 w200 h30, Najlepszy Clicker w Polsce!
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Text, x245 y300 w200 h20, Wersja: Free

Gui, Tab, Makro
Gui, Font, S10 cWhite, Bahnschrift Condensed
gui, add, slider, x200 y150 w90 h21 vmslpm ToolTip Range1-200, 37
Gui, Add, Slider, x461 y150 w90 h21 vmsppm ToolTip Range1-200, 3
Gui, Add, Edit, cBlack x390 y155 w60 h21 vPpm, Brak
Gui, Add, Edit, cBlack x125 y155 w60 h21 vLpm, Brak
gui, Add, Text, x190 y100 w90 h21,  LPM
gui, Add, Text, x450 y100 w90 h21,  PPM

Gui, Tab, Nowości
Gui, font, cyellow s12, Impact
Gui, Add, Text, x10 y50 w200 h20, 28.06.2021-05.07.2021
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text, x10 y70 w200 h20, Stworzono mOntey clicker
Gui, Add, Text, x10 y90 w200 h20, Zrobiono gui i skryptów
Gui, font, cyellow s12, Impact
Gui, Add, Text, x10 y120 w200 h20, 05.07.2021-12.07.2021
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text, x10 y140 w200 h20, Poprawiono niektóre skrypty
Gui, Add, Text, x10 y160 w200 h20, Ulepszono makro i Kopanie
Gui, Add, Text, x10 y180 w200 h20, Dodano więcej skryptów


Gui, Tab, FAQ
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text,x10 y70 w200 h20, Clicker został stworzony przez mOntey
Gui, Add, Text,x10 y90 w200 h20, mOntey Clicker został stworzony w AHK
Gui, Add, Text,x10 y110 w200 h20, mOntey Clicker to nie hack, bo nie wchodzi w pliki gry.
Gui, Add, Text,x10 y130 w200 h20, Wersja Premium jest tylko dla wspierających, a wersja demo jest dla subskrybujących.
Gui Add, Link, x10 y380 w200 h30, Autor <a href="https://www.youtube.com/channel/UCAKl5DjM6m2-9Znv7Fwvc_g">mOntey</a>
Gui Add, Link, x480 y380 w200 h30, Discord <a href="https://discord.gg/U4UMUFyCHH">Ekipa mOntey!</a>


Gui, Tab, Odpal Skrypt
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Button, x170 y85 w230 h80 gGO, &Odpal skrypt
return

timberman:
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Tab3,x0 y0 w650 h450, Keybinder|
gui, color, Black

Gui, Tab, Keybinder
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Text, x160 y85 w230 h80, Keybinder poruszania się w lewo i prawo!
Gui, Add, Text, x115 y200 w200 h20, Lewo:
Gui, Add, Text, x280 y200 w200 h20, Prawo:
Gui, Add, hotkey, cBlack x140 y200 w50 h20 vlewo,Brak
Gui, Add, hotkey, cBlack x310 y200 w50 h20 vprawo,Brak
Gui Add, Button, x210 y250 w90 h20, gGO, &Odpal skrypt
Gui, Show, x561 y262 h308 w513, Keybinder timberman by mOntey



Hotkey, *%lewo% , Lewo
Hotkey, *%prawo% , Prawo

lewo:
send {A}
return

prawo:
send {D}
return

return
Premium:
Gui,+AlwaysOnTop
GUI, Destroy
Gui, Font, cWhite
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Tab3,x0 y0 w650 h450, Informacje|Makro|Clumsy|Kopanie|Bindy|Dodatki|Ustawienia|Nowości|FAQ|Odpal Skrypt|

Gui, Font, cWhite
Gui, Color, cBlack


Gui, Tab,  Informacje
Gui, Color, Black
Gui, Font, S28 cWhite, Yu Gothic Light
Gui, Add, Text, x160 y85 w230 h80, mOnteyClicker
Gui, Font, S11 cWhite, Gothic Light
Gui, Add, Text, x200 y130 w200 h30, Najlepszy Clicker w Polsce!
Gui, Font, S10 cWhite, Bahnschrift Condensed
Gui, Add, Text, x245 y300 w200 h20, Wersja: Premium


Gui, Tab, Makro
Gui, Font, S10 cWhite, Bahnschrift Condensed
gui, add, slider, x200 y150 w90 h21 vmslpm ToolTip Range1-200, 37
Gui, Add, Slider, x461 y150 w90 h21 vmsppm ToolTip Range1-200, 3
gui, add, slider, x300 y260 w90 h21 vmsgarda ToolTip Range1-2000, 25
Gui, Add, Edit, cBlack x390 y155 w60 h21 vPpm, Brak
Gui, Add, Edit, cBlack x125 y155 w60 h21 vLpm, Brak
gui, Add, Text, x190 y100 w90 h21,  LPM
gui, Add, Text, x450 y100 w90 h21,  PPM
gui, Add, Text, x300 y230 w90 h21,  Gardowanie
gui, add, groupbox, x0 y0 w3000 h3000
Gui, Add, Checkbox, vGardowanie x267 y269
Gui, Add, Checkbox,x267 y300, Zmniejszenie knocka



Gui, Tab, Clumsy
Gui, font, cRed s10, Impact
Gui, add, text, x150 y50 w230 h50, Żeby clumsy działały musisz uruchomić clickera jako administrator!
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, add, text, x160 y100 w230 h50, Bind clumsy
Gui Add, Hotkey, x220 y98 w78 h23 +0x200 vclumsy
Gui, add, text, x100 y200 w230 h50, Wymagane jest zainstalowanie Clumsy.exe
Gui Add, Link, x100 y220 w230 h30, Download <a href="https://github.com/jagt/clumsy/releases/download/0.2/clumsy-0.2-win64.zip">clumsy 0.2</a>
Gui, add, text, x100 y240 w230 h50, Ustaw clumsy 0.2 tak jak jest poniżej:

Gui, Tab, Kopanie 
gui add, button, x50 y60 w200 h40 gprzejdz, Kliknij aby przejsc do kopania
gui add, button, x300 y60 w200 h40 gprzejdz1, Kliknij aby przejsc do kopania w tle



Gui, Tab, Bindy
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Text, x80 y50 w125 h40, Bindy
Gui Add, Hotkey, x100 y250 w125 h21 vsecik
Gui Add, Text, x10 y250 w78 h23 +0x200, Bind Seta
Gui Add, Hotkey, x100 y93 w125 h21 vpunch
Gui Add, Text, x10 y90 w78 h23 +0x200, Bind Puncha
Gui Add, Hotkey, x100 y125 w125 h21 vwedka
Gui Add, Text, x10 y125 w78 h23 +0x200, Bind Wedki
Gui Add, Hotkey, x100 y160 w125 h21 vperla
Gui Add, Text, x10 y160 w78 h23 +0x200, Bind Perly
Gui Add, Hotkey, x100 y190 w125 h21 vwater
Gui Add, Text, x10 y190 w78 h23 +0x200, Bind Podlewanie
Gui Add, Hotkey, x100 y220 w125 h21 vsnow
Gui Add, Text, x10 y220 w78 h23 +0x200, Bind Sniezki
Gui Add, Hotkey,x100 y280 w125 h21 vWiadro
Gui, Add, Text,x10 y280 w78 h23 +0x200, Bind Auto Water
Gui, Add, Text,x10 y310 w125 h23 +0x200, Altowanie paskiem
Gui, Add, Hotkey, x100 y310 w125 h21 vpasek
Gui, Add, Text,x10 y340 w125 h23 +0x200, Altowanie screen
Gui, Add, Hotkey, x100 y340 w125 h21 vscreen
Gui, Add, Text,x10 y370 w125 h23 +0x200, Jedzenie koxa
Gui, Add, Hotkey, x100 y370 w125 h21 vjedzeniekoxa



Gui, Tab, Dodatki
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Text, x300 y50 w125 h40, Dodatki
Gui, Add, Text,x5 y90 w85 h23 +0x200, Wyrzucanie itemow
Gui,Add, Hotkey, x100 y93 w125 h21  vZyg
Gui, Add, Text,x10 y120 w78 h23 +0x200, Schowek
Gui Add, Hotkey, x100 y123 w125 h21 vschowek
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text,x10 y150 w125 h23 +0x200, Efekty
Gui Add, Hotkey, x100 y153 w125 h21 vefektyyy
Gui, Add, Text,x10 y180 w125 h23 +0x200, Spawn
Gui Add, Hotkey, x100 y183 w125 h21 vspawn
Gui, Add, Text,x10 y213 w125 h23 +0x200, Bind daba
Gui, Add, Hotkey, x100 y213 w125 h21 vdabowaniebind
Gui, Add, Text,x10 y243 w125 h23 +0x200, AutoDabowanie
Gui, Add, Hotkey, x100 y243 w125 h21 vdabowanie
Gui, Add, Text,x10 y273 w125 h23 +0x200, Warp PVP
Gui Add, Hotkey, x100 y273 w125 h21 vwarp
Gui, Add, Text,x10 y303 w125 h23 +0x200, Anty afk
Gui Add, Hotkey, x100 y303 w125 h21 vafk
Gui, Add, Text,x10 y333 w125 h23 +0x200, Repair
Gui Add, Hotkey, x100 y333 w125 h21 vrepair
Gui, Add, Text,x10 y363 w125 h23 +0x200, Repair all
Gui Add, Hotkey, x100 y363 w125 h21 vrepairall
Gui, Add, Text,x10 y393 w125 h23 +0x200, Home
Gui Add, Hotkey, x100 y393 w125 h21 vBindHome
Gui, font, cBlack
Gui Add, Edit, x250 y393 w100 h20 vTpaHome, NazwaHome
Gui, font, cWhite s10, Bahnschrift Condensed


Gui, Tab, Ustawienia
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Text, x80 y40 w125 h40, Ustawienia
Gui Add, Hotkey, x100 y60 w125 h21 vpunch2
Gui Add, Text, x10 y60 w78 h23 +0x200, Slot Puncha
Gui Add, Hotkey, x100 y90 w125 h21 vwedka2
Gui Add, Text, x10 y90 w78 h23 +0x200, Slot Wedki
Gui Add, Hotkey, x100 y120 w125 h21 vperla2
Gui Add, Text, x10 y120 w78 h23 +0x200, Slot Perly
Gui Add, Hotkey, x100 y150 w125 h21 vsnow2
Gui Add, Text, x10 y150 w78 h23 +0x200, Slot Sniezki
Gui Add, Hotkey, x100 y180 w125 h21 vwater2
Gui Add, Text, x10 y180 w78 h23 +0x200, Slot Wody
Gui Add, Hotkey, x100 y210 w125 h21 vmiecz
Gui Add, Text, x10 y210 w78 h23 +0x200, Slot Miecza
Gui Add, Hotkey, x100 y240 w125 h21 vblok
Gui Add, Text, x10 y240 w78 h23 +0x200, Slot Bloków
Gui Add, Hotkey, x100 y270 w125 h21 vkilof
Gui Add, Text, x10 y270 w78 h23 +0x200, Slot kilofa
Gui Add, Hotkey, x100 y300 w125 h21 vkox
Gui Add, Text, x10 y300 w78 h23 +0x200, Slot koxa
Gui Add, Hotkey, x100 y330 w125 h21 vjedzenie
Gui Add, Text, x10 y330 w78 h23 +0x200, Slot jedzenia
Gui Add, Hotkey, x100 y360 w125 h21 vwyrzut
Gui Add, Text, x10 y360 w78 h23 +0x200, Przycisk wywalania
Gui Add, Hotkey, x100 y390 w125 h21 vkucanie
Gui Add, Text, x10 y390 w78 h23 +0x200, Przycisk kucania
Gui, font, cblack
Gui Add, Edit, x380 y220 w125 h21 vdezaktywacja, ^del
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Text, x380 y190 w150 h23 +0x200, Dezayktywacja (^ oznacza Ctrl)
Gui Add, Hotkey, x100 y420 w125 h21 vczat
Gui Add, Text, x10 y420 w78 h23 +0x200, Otwarcie czatu
Gui Add, Text, x400 y70 w78 h23 +0x200, Duzy
Gui Add, Text, x400 y100 w78 h23 +0x200, Normalne
Gui, Add, CheckBox, x380 y70 w15 h23 vscale, Duzy
Gui, Add, CheckBox, x380 y100 w15 h23 vscale2, Normalne
Gui Add, Text, x380 y40 w125 h21, Rozmiar gui:
Gui, Add, Text, x380 y140 w70 h20, Nazwa Okna:
Gui, font, cblack
Gui, Add, Edit, x380 y160 w100 h20 vOkno, Minecraft


Gui, Tab, Nowości
Gui, font, cyellow s12, Impact
Gui, Add, Text, x10 y50 w200 h20, 28.06.2021-05.07.2021
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text, x10 y70 w200 h20, Stworzono mOntey clicker
Gui, Add, Text, x10 y90 w200 h20, Zrobiono gui i skrypty
Gui, font, cyellow s12, Impact
Gui, Add, Text, x10 y120 w200 h20, 05.07.2021-12.07.2021
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text, x10 y140 w200 h20, Poprawiono niektóre skrypty
Gui, Add, Text, x10 y160 w200 h20, Ulepszono makro i Kopanie
Gui, Add, Text, x10 y180 w200 h20, Dodano więcej skryptów


Gui, Tab, FAQ
Gui, font, cWhite s10, Bahnschrift Condensed
Gui, Add, Text,x10 y70 w200 h20, Clicker został stworzony przez mOntey
Gui, Add, Text,x10 y90 w200 h20, mOntey Clicker został stworzony w AHK
Gui, Add, Text,x10 y110 w200 h20, mOntey Clicker to nie hack, bo nie wchodzi w pliki gry.
Gui, Add, Text,x10 y130 w200 h20, Wersja Premium jest tylko dla wspierających, a wersja demo jest dla subskrybujących.
Gui Add, Link, x10 y380 w200 h30, Autor <a href="https://www.youtube.com/channel/UCAKl5DjM6m2-9Znv7Fwvc_g">mOntey</a>
Gui Add, Link, x480 y380 w200 h30, Discord <a href="https://discord.gg/U4UMUFyCHH">Ekipa mOntey!</a>


Gui, Tab, Odpal Skrypt
Gui, font, cWhite s10, Bahnschrift Condensed
Gui Add, Button, x170 y85 w230 h80 gGO, &Odpal skrypt


Gui, Show, w650 h450, mOntey Clicker
GuiControl, , msctls_hotkey321, %set1%
GuiControl, , msctls_hotkey322, %punch22%
GuiControl, , punch2, %punch3%
GuiControl, , miecz, %miecz6%
GuiControl, , msctls_hotkey325, %wedka7%
GuiControl, , wedka2, %wedka8%
GuiControl, , msctls_hotkey326, %perla9%
GuiControl, , perla2, %perla10%
GuiControl, , msctls_hotkey327, %water11%
GuiControl, , water2, %water12%
GuiControl, , snow, %snow15%
GuiControl, , snow2, %snow16%
GuiControl, , scale, %scale17%
GuiControl, , scale2, %scale18%
if (punch3 = "ERROR" or "") {
	GuiControl, , punch2, Brak
}
if (miecz6 = "ERROR" or "") {
	GuiControl, , miecz, Brak
}
if (wedka8 = "ERROR" or "") {
	GuiControl, , wedka2, Brak
}
if (perla10 = "ERROR" or "") {
	GuiControl, , perla2, Brak
}
if (water12 = "ERROR" or "") {
	GuiControl, , water2, Brak
}
if (snow16 = "ERROR" or "") {
	GuiControl, , snow2, Brak
}
Return
GO:
GUI, submit, NoHide
if (scale = 1) {
	hotkey, ~*%secik%, zmianaseta2
}
if (scale2 = 1) {
	hotkey, ~*%secik%, zmianaseta
}
hotkey, ~*%punch%, punch
hotkey, ~*%wedka%, wedka
hotkey, ~*%perla%, perla
hotkey, ~*%water%, water
hotkey, ~*%snow%, snowball
Hotkey, ~*%Zyg% , rzyganie
Hotkey, ~*%Wiadro% , autowater
Hotkey, ~*%efektyyy% , efekty
Hotkey, ~*%schowek% , schowek
Hotkey, ~*%clumsy% , clumsy
Hotkey, ~*%spawn% , spawn
Hotkey, ~*%dabowanie% , autodab
Hotkey, ~*%kopanieon% , kopanieon
Hotkey, ~*%kopanieoff% , kopanieoff 
Hotkey, ~*%dezaktywacja% , dezaktywacja
Hotkey, ~*%screen% , screen 
Hotkey, ~*%pasek% , pasek
Hotkey, ~*%warp% , warp
Hotkey, ~*%afk% , afk
Hotkey, ~*%repair% , repair
Hotkey, ~*%repairall% , repairall
Hotkey, ~*%BindHome% , home
Hotkey, ~*%jedzeniekoxa% , kox
Hotkey, ~*%Lpm% , Lpm
Hotkey, ~*%ppm% , Ppm

IniWrite, %secik%, config.ini, Przyciski, key1
IniWrite, %punch%, config.ini, Przyciski, key2
IniWrite, %punch2%, config.ini, Przyciski, key3
IniWrite, %miecz%, config.ini, Przyciski, key6
IniWrite, %wedka%, config.ini, Przyciski, key7
IniWrite, %wedka2%, config.ini, Przyciski, key8
IniWrite, %perla%, config.ini, Przyciski, key9
IniWrite, %perla2%, config.ini, Przyciski, key10
IniWrite, %water%, config.ini, Przyciski, key11
IniWrite, %water2%, config.ini, Przyciski, key12
IniWrite, %snow%, config.ini, Przyciski, key15
IniWrite, %snow2%, config.ini, Przyciski, key16
IniWrite, %scale%, config.ini, Przyciski, key17
IniWrite, %scale2%, config.ini, Przyciski, key18
if (punch2 = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key3
}
if (miecz = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key6
}
if (wedka2 = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key8
}
if (perla2 = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key10
}
if (water2 = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key12
}
if (snow2 = "ERROR") {
	IniWrite, Brak, config.ini, Przyciski, key16
}

MsgBox, , Ustawienia, Ustawienia zostaly zapisane!,
MAIN()
return
MAIN(){
sleep 5
}
Komenda(string){
	SendInput {T}
	sleep 65
	Send /%string%
	sleep 85
	SendInput {Enter}
	sleep 85
}
return
snowball:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	send %snow2%
	send {RButton}
	sleep 123
	send %miecz%
}
return
water:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	MouseMove, 4000, 4000
	Sleep 100
	send %water2%
	sleep 100
	send {RButton}
	sleep 50
	send {RButton}
	sleep 100
	send %miecz%
}
return
wedka:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	send %wedka2%
	send {RButton}
	sleep 123
	send %miecz%
}
return
perla:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	send %perla2%
	send {RButton}
	sleep 123
	send %miecz%
}
return
kopanieon:

loop

{

sleep 400

SendInput {LButton down}

sleep 20000

send t

sleep 400

send %komendajeden%

sleep 400

send {ENTER}

sleep 400

send t

sleep 400

send %komendadwa%

sleep 400

send {ENTER}

sleep 400

send t

sleep 400

send %komendatrzy%

sleep 400

send {ENTER}

}



kopanieoff:

{

pause

}
return
punch:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	send %punch2%
	send {lctrl down}
	sleep 1
	send {Rbutton down}
	sleep 152
	send {Rbutton up}
	send {s}
	sleep 1
	send {lctrl up}
}
return
zmianaseta2:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	BlockInput, On
	send e
	sleep 40
	MouseGetPos, X, Y
	X2 := X - 212
	Y2 := Y + 25
	X3 := X2
	Y3 := Y2 - 212
	sendinput {click left %X2%, %Y2%}
	sleep 30
	sendinput {click left %X3%, %Y3%}
	sleep 30
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 53
	Y3 := Y3 + 53
	sleep 30
	sendinput {click left %X2%, %Y2%}
	sleep 30
	sendinput {click left %X3%, %Y3%}
	sleep 30
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 53
	Y3 := Y3 + 53
	sleep 30
	sendinput {click left %X2%, %Y2%}
	sleep 30
	sendinput {click left %X3%, %Y3%}
	sleep 30
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 53
	Y3 := Y3 + 53
	sleep 30
	sendinput {click left %X2%, %Y2%}
	sleep 30
	sendinput {click left %X3%, %Y3%}
	sleep 30
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 53
	Y3 := Y3 + 53
	sleep 40
	send e
	Random, rnd,1,100
	if (rnd <= 25) {
		temp = %clipboard%
		clipboard := ">> /msg mOntey Używam twojego skryptu :) <<"
		sleep 30
		send {T}
		sleep 30
		sendinput {CTRL down}
		sendinput {V down}
		sleep 30
		sendinput {CTRL up}
		sendinput {V up}
		send {ENTER}
	}
	BlockInput, Off
}
return
schowek:
Komenda("schowek")


return
spawn:
Komenda("spawn")


return
warp:
Komenda("warp pvp")


return
efekty:
Komenda("efekty")

return
repair:
Komenda("repair")

return
repairall:
Komenda("repair all")


return
rzyganie:
send {Ctrl down}
send Q
sleep 1
send {Ctrl up}
return

return
screen:
Send {F2}
Send {F2}
Send {F2}

return
home:
{
send t
sleep 50
Send {NumpadDiv}
sleep 50
send home %tpahome%
sleep 50
send {enter}
sleep 50
Send {Shift Down}
sleep 10500
Send {Shift Up}
}
return
pasek:
Send {Enter}
Send {ESC}
Send {F11}
Sleep 400
MouseMove, 440, 20
MouseClick, right
Sleep 400
Send {ESC}
Sleep 600
Send {F11}
Send {ESC}
Send {ESC}

return
afk:
Loop
{
Send {W Down}
sleep 1000
Send {W Up}
sleep 1000
Send {S Down}
sleep 1000
Send {S Up}
sleep 1000
Send %antyafk%
sleep 1000
SendInput {enter}
sleep 300
}
Return
autodab:

KeyDown := !KeyDown

If KeyDown

	SendInput {%dabowaniebind% down}

Else

	SendInput {%dabowaniebind% up}

	
return
autowater:
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
MouseMove, 4000, 4000
Send %water2%
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
Send {RButton up}
Sleep 1
Send {RButton down}
sleep 1
return
kox:
{
Send %kox%
Send {RButton Down}
sleep 1500
Send {Rbutton Down}
Send %miecz%
}
return
Toggle = 0
#MaxThreadsPerHotkey 2
Lpm:
if(gardowanie = 1)
{
Toggle := !Toggle
While Toggle{
Click
sleep %mslpm%
click
sleep %mslpm%
click
sleep %mslpm%
click
sleep %mslpm%
click
sleep %mslpm%
click
sleep %mslpm%
click
sleep %gardams%
send {rbutton}
}
}
if(gardowanie = 0)
{
Toggle := !Toggle
While Toggle{
Click
sleep %mslpm%
}
}
return
return
Ppm:
Toggle := !Toggle
While Toggle{
Click Right
sleep %msppm%
}
return
clumsy:
{	
-::ControlClick, Button2, clumsy 0.2	
}
return
zmianaseta:
{
	IfWinnotActive, Minecraft
		return
	If (pow3r = 0) {
		return
	}
	BlockInput, On
	send e
	sleep 40
	MouseGetPos, X, Y
	X2 := X - 147
	Y2 := Y + 18
	X3 := X2
	Y3 := Y2 - 160
	sendinput {click left %X2%, %Y2%}
	sendinput {click left %X3%, %Y3%}
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 33
	Y3 := Y3 + 33
	sendinput {click left %X2%, %Y2%}
	sendinput {click left %X3%, %Y3%}
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 33
	Y3 := Y3 + 33
	sendinput {click left %X2%, %Y2%}
	sendinput {click left %X3%, %Y3%}
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 33
	Y3 := Y3 + 33
	sendinput {click left %X2%, %Y2%}
	sendinput {click left %X3%, %Y3%}
	sendinput {click left %X2%, %Y2%}
	X2 := X2 + 33
	Y3 := Y3 + 33
	sleep 40
	send e
	Random, rnd,1,100
	if (rnd <= 25) {
		temp = %clipboard%
		clipboard := ">> /msg mOntey Używam twojego skryptu :) <<"
		sleep 30
		send {T}
		sleep 30
		sendinput {CTRL down}
		sendinput {V down}
		sleep 30
		sendinput {CTRL up}
		sendinput {V up}
		send {ENTER}
	}
	BlockInput, Off
}
return
power:
{
	if (pow3r = 1) {
		pow3r = 0
	} else {
		pow3r = 1
	}
}

	
Label:
	Gui, Submit,NoHide
	;msgbox,%Var%
	return


return


offkopanie:

{

pause

}
return

F4::
loopCountEat := 0

loopCount1 := 0

loopCount2 := 0

loopCount3 := 0

loopChecker := 0



Loop

{

global stopLoop

global end

GuiControlGet, dlugosc, MyGui:, dlugosc

GuiControlGet, szerokosc, MyGui:, szerokosc

GuiControlGet, czacik, MyGui:, Czat

GuiControlGet, Stejki, MyGui:, CzyJesc     

GuiControlGet, Jedzenieco, MyGui:, Jedzco  

GuiControlGet, Jedzslot, Gui:, Jedzslot         

GuiControlGet, piontka, MyGui:, piontka  

GuiControlGet, Pickaxe, MyGui:, Kilofslot 

GuiControlGet, iloscKomend, MyGui:, cmdCount





if (piontka = 1){

Click, down

sleep 4500

Click, up

}





if (piontka = 0){

Click, down

send {d down}

sleep (dlugosc)*Czas

send {d up}



if (szerokosc > 0){

send {s down}

sleep (szerokosc)*Czas

send {s up}

}



send, {a down}

sleep (dlugosc)*Czas

send {a up}



if (szerokosc > 0){

send {w down}

sleep (szerokosc)*Czas

sleep 5

send {w up}

}



sleep 5

Click, up

sleep 5

}









loop, %iloscKomend%{

loopCount%A_Index%++

GuiControlGet, przejscia, MyGui:, cmdedit%A_Index%

if (loopCount%A_Index% >= przejscia){

GuiControlGet, komenda, MyGui:, cmdcmd%A_Index%

send %czacik%

sleep 100

send %komenda%

sleep 100

send {Enter}

sleep 100



loopCount%A_Index% = 0

}

}





if (Stejki = 1){

loopCountEat++

if (loopCountEat >= Jedzenieco){

sleep 100

send %Jedzslot%

sleep 100

Send {RButton down}

sleep 2000

Send {RButton up}

send %Pickaxe%

sleep 100



loopCountEat = 0

}

}

}

	

			

return
cmdCountChange:

GuiControlGet, cmdCount

loop, 7{

guiControl, hide, cmdcmd%A_Index%

guiControl, hide, cmdedit%A_Index%

}

if (cmdCount >= 1){

guiControl, show, cmdcmd1

guiControl, show, cmdedit1

}

if (cmdCount >= 2){

guiControl, show, cmdcmd2

guiControl, show, cmdedit2

}

if (cmdCount >= 3){

guiControl, show, cmdcmd3

guiControl, show, cmdedit3

}





return

	
exit:
exitapp
return
GuiEscape:
GuiClose:
ExitApp

dezaktywacja:
{
ExitApp
}
return



^del::
{
ExitApp
}
return