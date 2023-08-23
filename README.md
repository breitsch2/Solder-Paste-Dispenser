![GitHub Logo](http://www.heise.de/make/icons/make_logo.png)

Maker Media GmbH

![Aufmacher](https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/blob/main/cnc1610_s.JPG)

# Solder-Paste-Dispenser

### Umbau einer Mini-CNC-Fräse zu einem Lötpasten-Dispenser für SMD-Bestückung

Also possible with maXbox4 Scripting

![1247_tcomport_dispenser_gui1](https://github.com/breitsch2/Solder-Paste-Dispenser/assets/109789632/76e7bf0d-b1d3-46fb-a83c-63ce2aa9e890)

### von Carsten Meyer und Max Kleiner
maXbox a script tool engine, compilerlib all in one exe! Build to teach/ develop under Windows and Linux (CLX) to set Delphi with no install. maXbox has RemObjects PascalScript smart code. With include,events print, decompile, syncheck, templates, VM-, and DLL support. +Indy,Jedi,CGI,DMath,CAI,FLC5 & Systools.4.0 with CryptoBox4 and ComPort for Arduino!, OS Lib mX4- Build mX4.7.6.50 

**Teure Edelstahl-Pastenschablonen und die unvermeidliche Sauerei beim Aufragen erspart man sich mit unserem DIY-Dispenser: So macht SMD-Bestücken wieder Spaß!**

Wer als Maker nicht nur Einzelstücke, sondern auch mal eine Kleinserie auflegt, kommt um einen unbeliebten Arbeitschritt nicht herum: Das Auftragen der SMD-Lötpaste mit Edelstahl-Schablone und Spachtel endet regelmäßig in einer krassen Sauerei – von den Kosten für die (möglicherweise nur wenige Male benutzten) Schablone ganz abgesehen. In unserer Make-Werkstatt stand seit vielen Monaten eine kleine Billig-CNC-Fräse namens CNC1610 herum, die wegen des eiernden Spindelmotors und der eher labilen Konstruktion niemand mehr ernsthaft benutzen wollte. Das brachte uns auf die Idee, statt des Motors eine Lötpasten-Dosierspritze einzuspannen, so dass der Pastenauftrag programmgesteuert erfolgen kann.

Material:

* Mini-CNC-Fräse, z.B. CNC1610 (oder ähnlich, gern auch größer; es sind auch Chassis für leichte Laser-Gravierer geeignet, da keine großen Kräfte aufgewendet werden)
* Falls nicht beiliegend: Schrittmotor-Steuerungsplatine (3 Achsen) auf ATmega328/Arduino-Basis mit GRBL-Firmware
* Falls nicht beiliegend: Netzteil 12V/3A
* 3 Mikroschalter in Miniaturausführung, für Achsen-Endschalter 
* Dispenser AD-982
* Ikea-Leselampe
* Stahlblech 1mm, 20 x 20 cm
* Selbstklebende Schaumstoff-Matte (2mm stark) als Platinen-Unterlage
* Neodym-Magnete zur Platinen-Fixierung
* Druckluft-Stecker mit Verschraubung für 6mm-Schläuche (der dem AD-982 beiliegende Druckluft-Stecker ist mit europäischen Kompressoren nicht kompatibel)

Zur Kompilierung ist die kostenlose [Delphi-Community-Edition von Embarcadero](https://www.embarcadero.com/de/products/delphi/starter/free-download) erforderlich. Zusätzlich muss in der IDE die [TComPort-Komponente](https://sourceforge.net/projects/comport/) installiert werden, über die die Software zur Kommunikation mit dem USB-Seriell-Chip CH340 auf der Steuerungsplatine der Fräse zugreift.

Wer keine eigenen Anpassungen an die Software benötigt, kann auch das fertig kompilierte *Dispenser.exe* (Windows) herunterladen. Die Voreinstellungs-Datei *Dispenser.INI* muss im gleichen Verzeichnis wie das Programm liegen, ansonsten ist keine Installation erforderlich.

![Screenshot](https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/blob/main/dispenser_screen.png)
