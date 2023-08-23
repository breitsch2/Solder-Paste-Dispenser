unit Dispenser_mX4_lessForm;

//https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/tree/main

interface

{uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes,
  System.Variants, System.Classes, System.Types, Registry,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.Menus, Vcl.Buttons, Vcl.XPMan,
  _GClass, IniFiles,
  CPort, CPortCtl, System.Math; }

type
  TForm1 = {class(}TForm ;
  var
    aMemo1: TMemo;
    Button_Settings: TButton;
    Button_Open: TButton;
    ComPort: TComPort;
    Timer1: TTimer;
    EditStatus: TEdit;
    LabelStatus: TLabel;
    LabelXM: TLabel;
    LabelYM: TLabel;
    LabelZM: TLabel;
    LabelXW: TLabel;
    LabelYW: TLabel;
    LabelZW: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnXzero: TBitBtn;
    BitBtnYzero: TBitBtn;
    BitBtnZzero: TBitBtn;
    Bevel10: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtnHome: TBitBtn;
    BitBtnGotoZero: TBitBtn;
    EditPitchX: TEdit;
    EditPadsX: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditPadsY: TEdit;
    Label6: TLabel;
    BitBtnCreateBGA: TBitBtn;
    BitBtnAbort: TBitBtn;
    Bevel1: TBevel;
    OpenDialog1: TOpenDialog;
    BitBtn23: TBitBtn;
    SgBlocks: TStringGrid;
    SgApert: TStringGrid;
    Label7: TLabel;
    Label8: TLabel;
    DrawingBox: TPaintBox;
    TrackBar1: TTrackBar;
    Bevel2: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtnRun: TBitBtn;
    PopupMenu1: TPopupMenu;
    SetReferenceNozzleisatthisPad1: TMenuItem;
    EnableAperture1: TMenuItem;
    DisableAperture1: TMenuItem;
    DisableallApertures1: TMenuItem;
    N1: TMenuItem;
    EditPitchY: TEdit;
    Label11: TLabel;
    EditDwellTime: TEdit;
    Label12: TLabel;
    EditPadTime: TEdit;
    Label13: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItemApertCircle: TMenuItem;
    MenuItemApertRect: TMenuItem;
    MenuItemApertOff: TMenuItem;
    N2: TMenuItem;
    MenuItemApertDisableAll: TMenuItem;
    MenuItemApertEnableAll: TMenuItem;
    Label14: TLabel;
    TimerDraw: TTimer;
    MovetothispadXY: TMenuItem;
    Label19: TLabel;
    EditSavedX: TEdit;
    EditSavedY: TEdit;
    EditSavedZ: TEdit;
    BitBtnGotoPos: TBitBtn;
    BitBtnSavePos: TBitBtn;
    BitBtnAllzero: TBitBtn;
    BitBtnFeedAir: TBitBtn;
    BtnSO8: TButton;
    BtnSO16W: TButton;
    BtnBGA: TButton;
    Button1: TButton;
    Button4: TButton;
    Label20: TLabel;
    EditPadTimeRO: TEdit;
    Label21: TLabel;
    DispensethisPad1: TMenuItem;
    N3: TMenuItem;
    DispensePadswiththisAperture1: TMenuItem;
    Label22: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button_OpenClick(Sender: TObject);
    procedure Button_SettingsClick(Sender: TObject);
    procedure ComPortRxChar(Sender: TObject; Count: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComPortAfterClose(Sender: TObject);
    procedure ComPortAfterOpen(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtnJogMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtnHomeClick(Sender: TObject);
    procedure BitBtnXzeroClick(Sender: TObject);
    procedure BitBtnYzeroClick(Sender: TObject);
    procedure BitBtnZzeroClick(Sender: TObject);
    procedure BitBtnAllZeroClick(Sender: TObject);
    procedure BitBtnCreatePatternClick(Sender: TObject);
    procedure BitBtnAbortClick(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure SgBlocksSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SgBlocksDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnRunClick(Sender: TObject);
    procedure SetZeroReferencePoint(Sender: TObject);
    procedure SgBlocksMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SgApertSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormResize(Sender: TObject);
    procedure SgBlocksCircleClick(Sender: TObject);
    procedure SgBlocksRectClick(Sender: TObject);
    procedure SgBlocksOffClick(Sender: TObject);
    procedure SgApertMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItemApertDisableAllClick(Sender: TObject);
    procedure MenuItemApertEnableAllClick(Sender: TObject);
    procedure MenuItemApertCircleClick(Sender: TObject);
    procedure MenuItemApertRectClick(Sender: TObject);
    procedure MenuItemApertOffClick(Sender: TObject);
    procedure SgApertDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TimerDrawTimer(Sender: TObject);
    procedure MovetothispadXYClick(Sender: TObject);
    procedure BitBtnGotoZeroClick(Sender: TObject);
    procedure BitBtnSavePosClick(Sender: TObject);
    procedure BitBtnGotoPosClick(Sender: TObject);
    procedure BitBtnFeedAirMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnSO8Click(Sender: TObject);
    procedure BtnSO16Click(Sender: TObject);
    procedure BtnSO16WClick(Sender: TObject);
    procedure BtnBGAClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DrawingBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawingBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawingBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DispensethisPad1Click(Sender: TObject);
    procedure DispensePadswiththisAperture1Click(Sender: TObject);
  //private
    { Private-Deklarationen }
  //public
    { Public-Deklarationen }
  //end;

type
  t_fpos = record
    X, Y, Z: Double;
  end;

  t_gerberinfo = record
    UseInches: Boolean;

    IntDigitsX: Integer;
    DecimalDigitsX: Integer;
    ScaleX: Double;

    IntDigitsY: Integer;
    DecimalDigitsY: Integer;
    ScaleY: Double;
    RefPointRow: Integer;
  end;


var
  Form1: TForm1;
  StatusIdle: Boolean;
  Mpos: t_fpos;
  Wpos: t_fpos;
  AbortFlag: Boolean;
  AppFilePath, LastFileName: String;
  GerberInfo: t_gerberinfo;
  GerberBitmap: Tbitmap;
  RefPointX, RefPointY: Double;
  RefreshGerberDrawingSema: Boolean;
  ZeroAllok, ZeroYok, ZeroXok, ZeroZok, Homed: Boolean;
  mouse_start, bm_scroll: TPoint;
  gerber_bottomleft: t_fpos;

implementation

//{$R *.dfm}

function TControlGetClientOrigin: TPoint;
var parent: TForm;
begin
  //if Parent = nil then
    //InvalidControlOperation(@SParentRequired, Self);
  Result := Parent.ClientOrigin;
  //Inc2(Result.X, FLeft);
  //Inc2(Result.Y, FTop);
end;

function TControlClientToScreen(const Point: TPoint): TPoint;
var
  Origin: TPoint;
begin
  Origin := form1.ClientOrigin;
  Result.X := Point.X + Origin.X;
  Result.Y := Point.Y + Origin.Y;
end;

function TControlScreenToClient(const Point: TPoint): TPoint;
var
  Origin: TPoint;
begin
  Origin := form1.ClientOrigin;
  Result.X := Point.X - Origin.X;
  Result.Y := Point.Y - Origin.Y;
end;

// -----------------------------------------------------------------------------

function FloatToStrDot(my_val: Double):String;
var
  my_Settings: TFormatSettings;
begin
  //my_Settings.Create;
  my_Settings:= GetFormatSettings2; // : TFormatSettings;
  my_Settings.DecimalSeparator := '.';
  result:= FormatFloat2('0.00',my_val,my_Settings);
end;

function FloatToStr4Dot(my_val: Double):String;
var
  my_Settings: TFormatSettings;
begin
  //my_Settings.Create;
  my_Settings:= GetFormatSettings2;
  my_Settings.DecimalSeparator := '.';
  result:= FormatFloat2('0.0000',my_val,my_Settings);
end;

function FloatToStr7Dot(my_val: Double):String;
var
  my_Settings: TFormatSettings;
begin
  //my_Settings.Create;
  my_Settings:= GetFormatSettings2;
  my_Settings.DecimalSeparator := '.';
  result:= FormatFloat2('0.0000000',my_val,my_Settings);
end;

function StrDotToFloat(my_str: String): Double;
var
  my_Settings: TFormatSettings;
begin
  //my_Settings.Create;
  my_Settings:= GetFormatSettings2;
  my_Settings.DecimalSeparator := '.';
  result:= StrToFloatDef2(my_str,0,my_Settings);
end;

// -----------------------------------------------------------------------------

procedure SendSingleCommandStr(cmd_str: String);
var ok_str: String;
  count: Integer;
begin
  with Form1 do begin
    ComPort.WriteStr(cmd_str + #13);
    repeat
      sleep(1);
      count:= ComPort.InputCount;
    until count > 3;
    ComPort.ReadStr(ok_str, count);
    ok_str  := StringReplace(ok_str, #13, ' ', [rfReplaceAll, rfIgnoreCase]);
    //if pos('error', ok_str) > 0 then
    aMemo1.Lines.Add(cmd_str + ' ' + ok_str);
  end;
end;

// -----------------------------------------------------------------------------
// --------------------------- DISPENSE PASTE ----------------------------------
// -----------------------------------------------------------------------------

procedure DispenseDot(dx, dy, dwell_time: Double);
begin
  {Form1.}EditPadTimeRO.Text:= FloatToStrDot(dwell_time);
  SendSingleCommandStr('G0 X' + FloatToStrDot(dx) + ' Y' + FloatToStrDot(dy));
  SendSingleCommandStr('G0 Z2');
  SendSingleCommandStr('M3 S1000');
  // Dwell Time, Sekunden bei GRBL - Vorimpuls
  SendSingleCommandStr('G4 P' + FloatToStr4Dot(dwell_time));
  SendSingleCommandStr('M5');
  SendSingleCommandStr('G0 Z-0.05');
{
  SendSingleCommandStr('M3');
  // Dwell Time, Sekunden bei GRBL
  SendSingleCommandStr('G4 P' + FloatToStr4Dot(dwell_time));
  SendSingleCommandStr('M5');
}
  SendSingleCommandStr('G1 Z0.1 F200');
  SendSingleCommandStr('G0 Z2');
end;

procedure Dispense(dx, dy, rx, ry: Double);
var
  dwell_time, pad_time: Double;
begin
  pad_time:= StrDotToFloat({Form1.}EditPadtime.Text) / 1000;
  dwell_time:= StrDotToFloat({Form1.}EditDwelltime.Text) / 1000;
  pad_time:= (rx * ry * pad_time);  // Sekunden!
  if (rx < 2.5) and (ry < 2.5) then
    DispenseDot(dx, dy, dwell_time + pad_time)
  else begin
    pad_time:= pad_time / 2;  // 2 Dots
    if rx >= 2.5 then begin
     DispenseDot(dx - rx/4, dy, dwell_time + pad_time);
     DispenseDot(dx + rx/4, dy, dwell_time + pad_time);
    end;
    if ry >= 2.5 then begin
     DispenseDot(dx, dy - ry/4, dwell_time + pad_time);
     DispenseDot(dx, dy + ry/4, dwell_time + pad_time);
    end;
  end;
end;

// -----------------------------------------------------------------------------

function GetStatus: Boolean;
// liefert TRUE wenn IDLE
var
  aStr: String;
  count, timeout: Integer;
  sl: TStringList;
begin
  result:= false;
  with Form1 do
    if ComPort.Connected then begin
      ComPort.TransmitChar('?');
      timeout:= 0;
      repeat
        count:= ComPort.InputCount;
        sleep(1);
        inc(timeout)
      until (count > 40) or (timeout > 100);
      if timeout > 100 then
        exit;
      sleep(5);
      count:= ComPort.InputCount;
      ComPort.ReadStr(aStr, count);
      if (aStr[1] = '<') then begin
        aStr:= copy(aStr, 2, length(aStr) - 4);
        EditStatus.Text:= aStr;
        sl := Tstringlist.Create;
        sl.Delimiter :=','; //comma delimiter
        sl.DelimitedText:= aStr;
        if sl.Count > 6 then begin
          LabelStatus.Caption:= sl[0];
          if sl[0]= 'Idle'  then
            result:= true;

          aStr:= copy(sl[1], 6, 9);
          LabelXM.Caption:= aStr;
          Mpos.X:= StrDotToFloat(aStr);
          LabelYM.Caption:= sl[2];
          Mpos.Y:= StrDotToFloat(sl[2]);
          LabelZM.Caption:=  sl[3];
          Mpos.Z:= StrDotToFloat(sl[3]);

          aStr:= copy(sl[4], 6, 9);
          LabelXW.Caption:= aStr;
          Wpos.X:= StrDotToFloat(aStr);
          LabelYW.Caption:= sl[5];
          Wpos.Z:= StrDotToFloat(sl[3]);
          LabelZW.Caption:= sl[6];
          Wpos.Z:= StrDotToFloat(sl[3]);
        end;
        sl.free;
      end;
    end;
end;

// -----------------------------------------------------------------------------

const
  graph_offset = 16;

procedure DrawGerber(grow_sel, apert_sel: Integer);
// grow_sel, apert_sel: Aktive Zeile des SG
//const
  //graph_offset = 16;
var
  aRow: Integer;
  x, y: Double;
  ix, iy, rx, ry,
  ref_x, ref_y,
  offs_y_h: Integer;
  astr: String;
  zoom: Double;
begin
  with Form1 do begin
    GerberBitmap.Height:= DrawingBox.Height;
    GerberBitmap.Width:= DrawingBox.Width;
    astr:= SgApert.Cells[0, apert_sel];
    zoom:= Trackbar1.Position;
    offs_y_h:= GerberBitmap.Height - graph_offset;
    GerberBitmap.Canvas.Pen.Color:= clgray;
    GerberBitmap.Canvas.Brush.Color:= $00003000;  // Hintergrund dunkelgrün
    GerberBitmap.Canvas.FillRect(rect(0, 0, GerberBitmap.Width, GerberBitmap.Height));
    GerberBitmap.Canvas.moveto(bm_scroll.x + graph_offset, 0);
    GerberBitmap.Canvas.lineto(bm_scroll.x + graph_offset, GerberBitmap.Height);
    GerberBitmap.Canvas.moveto(0, bm_scroll.y + offs_y_h);
    GerberBitmap.Canvas.lineto(GerberBitmap.Width, bm_scroll.y + offs_y_h);

    for aRow:= 1 to {Form1.}SgBlocks.RowCount - 1 do begin
      x:= StrDotToFloat(SgBlocks.Cells[1, aRow]);
      ix:= round(x * zoom) + graph_offset;
      y:= StrDotToFloat(SgBlocks.Cells[2, aRow]);
      iy:= GerberBitmap.Height - round(y * zoom) - graph_offset;

      rx:= round(StrDotToFloat(SgBlocks.Cells[4, aRow]) * zoom / 2);
      ry:= round(StrDotToFloat(SgBlocks.Cells[5, aRow]) * zoom / 2);
      if aRow = grow_sel then
        GerberBitmap.Canvas.Brush.Color:= clred
      else if SgBlocks.Cells[3, aRow] = astr then
        GerberBitmap.Canvas.Brush.Color:= $00A0A0FF    // hellrot
      else
        GerberBitmap.Canvas.Brush.Color:= clsilver;
      if SgBlocks.Cells[6, arow] = 'OFF' then
        GerberBitmap.Canvas.Brush.Color:= $00304030;
      if SgBlocks.Cells[6, arow] = 'Circle' then
        GerberBitmap.Canvas.Ellipse(bm_scroll.x + ix - rx, bm_scroll.y + iy - ry, bm_scroll.x + ix + rx, bm_scroll.y + iy + ry)
      else
        GerberBitmap.Canvas.FillRect(rect(bm_scroll.x + ix - rx, bm_scroll.y + iy - ry, bm_scroll.x + ix + rx, bm_scroll.y + iy + ry));
    end;
    // Ref Point Zero anzeigen
    ref_x:= bm_scroll.x + round(RefPointX * zoom) + graph_offset;
    ref_y:= bm_scroll.y + GerberBitmap.Height - round(RefPointY * zoom) - graph_offset;
    GerberBitmap.Canvas.Pen.Color:= clyellow;
    GerberBitmap.Canvas.Brush.Color:= $0000A0FF;
    GerberBitmap.Canvas.moveto(ref_x - 15, ref_y);
    GerberBitmap.Canvas.lineto(ref_x + 15, ref_y);
    GerberBitmap.Canvas.moveto(ref_x, ref_y - 15);
    GerberBitmap.Canvas.lineto(ref_x, ref_y + 15);
    GerberBitmap.Canvas.Ellipse(ref_x - 5, ref_y - 5, ref_x + 5, ref_y + 5);
    GerberBitmap.Canvas.Brush.Color:= $00003000;
    GerberBitmap.Canvas.Font.Color:= clyellow;
    GerberBitmap.Canvas.TextOut(ref_x + 6, ref_y - 16, 'Zero Ref');
    {Form1.}DrawingBox.Canvas.Draw(0, 0, GerberBitmap);
  end;
end;

procedure SearchGerber(aStr: String);  // sucht in Blocks-SG nach Aperture
var
  gRow: Integer;
begin
  with Form1 do begin
    for gRow:= 1 to SgBlocks.RowCount - 1 do
      if SgBlocks.Cells[3, gRow] = aStr then
        break;
    if gRow < SgBlocks.RowCount then
      SgBlocks.Row:= gRow
    else
      SgBlocks.Row:= 1;
  end;
end;

procedure SearchApert(aStr: String);  // sucht in Apertures-SG nach Aperture
var
  aRow: Integer;
begin
  with Form1 do begin
    for aRow:= 1 to SgApert.RowCount - 1 do
      if SgApert.Cells[0, aRow] = aStr then
        break;
    if aRow < SgApert.RowCount then
      SgApert.Row:= aRow
    else
      SgApert.Row:= 1;
  end;
end;

// -----------------------------------------------------------------------------

procedure GerberFileload(filename: String);
// Liest File in FileBuffer und liefert Länge zurück
var
  my_ReadFile: TextFile;
  n, apert, slen, spos, xpos, ypos, tpos,
  dpos, cpos, grow, arow: Integer;
  my_line, my_str: String;
  dx, dy, cscale: Double;
begin
  if not FileExists(filename) then
     exit;
  {Form1.}Timer1.Enabled:= false;
  {Form1.}TimerDraw.Enabled:= false;
  GerberInfo.UseInches:= false;
  GerberInfo.IntDigitsX:= 3;
  GerberInfo.IntDigitsY:= 3;
  GerberInfo.DecimalDigitsX:= 5;
  GerberInfo.DecimalDigitsY:= 5;
  //FileMode := fmOpenRead;    fix
  //AssignFile(my_ReadFile, filename);
  //Reset(my_ReadFile);
  cscale:= 1;
  grow:= 0;
  arow:= 0;
  dx:= 0;
  dy:= 0;
  apert:= 10;
  gerber_bottomleft.X:= 999;
  gerber_bottomleft.Y:= 999;
 (* while not Eof(my_ReadFile) do begin   fix
    Readln(my_ReadFile, my_line);
    if pos('D03', my_line) > 0 then  // Flash commands zählen
      inc(grow);
  end; *)
  {Form1.}SgBlocks.RowCount:= grow + 1;
  grow:= 0;

  Reset(my_ReadFile);
 // while not Eof(my_ReadFile) do begin fix
  while not Eof() do begin //fix
    Application.ProcessMessages;
    //Readln(my_ReadFile, my_line);
    slen:= length(my_line);
    if slen > 1 then begin
      if my_line[1] = '%' then begin  // eg. %FSLAX35Y35*%
        if pos('%FSLA', my_line) > 0 then begin
          spos:= pos('X', my_line);
          if spos > 0 then begin
            GerberInfo.IntDigitsX:= ord(my_line[spos + 1]) - 48;
            GerberInfo.DecimalDigitsX:= ord(my_line[spos + 2]) - 48;
            GerberInfo.ScaleX:= Power(10, -GerberInfo.DecimalDigitsX);
          end;
          spos:= pos('Y', my_line);
          if spos > 0 then begin
            GerberInfo.IntDigitsY:= ord(my_line[spos + 1]) - 48;
            GerberInfo.DecimalDigitsY:= ord(my_line[spos + 2]) - 48;
            GerberInfo.ScaleY:= Power(10, -GerberInfo.DecimalDigitsY);
          end;
        end;
        // Unit used
        if pos('%MOIN', my_line) > 0 then begin
          GerberInfo.UseInches:= true;
          cscale:= 25.4;
        end;
        if pos('%MOMM', my_line) > 0 then begin
          GerberInfo.UseInches:= false;
          cscale:= 1;
        end;
        // Apertures
        if pos('%ADD', my_line) > 0 then with Form1 do begin
          cpos:= pos(',', my_line) - 1;
          xpos:= pos('X', my_line);
          tpos:= pos('T', my_line);
          if tpos > 0 then
            my_str:= copy(my_line, 5, tpos - 5)
          else
            my_str:= copy(my_line, 5, cpos - 5);
          inc(arow);
          SgApert.RowCount:= arow + 1;
          SgApert.Cells[0, arow]:= 'D' + my_str;
          if tpos > 0 then begin
            SgApert.Cells[3, arow]:= 'Tool';
            dx:= 0.5;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            dy:= 0.5;
            SgApert.Cells[2, arow]:= FloatToStrDot(dy);
          end else if my_line[cpos] = 'C' then begin  // Circle
            SgApert.Cells[3, arow]:= 'Circle';
            my_str:= copy(my_line, cpos + 2, slen - cpos  - 3);
            dx:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            SgApert.Cells[2, arow]:= SgApert.Cells[1, arow];
          end else if xpos > 0 then begin
            SgApert.Cells[3, arow]:= 'Rect';
            my_str:= copy(my_line, cpos + 2, xpos - cpos  - 2);
            dx:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            my_str:= copy(my_line, xpos + 1, slen - xpos  - 2);
            dy:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[2, arow]:= FloatToStrDot(dy);
          end;
        end;
      end;
      if my_line[1] = 'D' then begin
        my_str:= copy(my_line, 2, slen - 2);
        n:= StrToIntDef(my_str, 10);
        if n >= 10 then
          apert:= n;
      end;

      dpos:= pos('D03', my_line);  // Flash command, eg. X39400Y128744D03*
      if dpos > 0 then with Form1 do begin
        inc(grow);
        SgBlocks.Cells[0, grow]:= IntToStr(grow);
        xpos:= pos('X', my_line);
        ypos:= pos('Y', my_line);
        if ypos > 0 then begin
          my_str:= copy(my_line, ypos + 1, dpos - ypos - 1); // Y-Wert
          dy:= StrDotToFloat(my_str) * GerberInfo.ScaleY * cscale;
          if xpos > 0 then begin
            my_str:= copy(my_line, xpos + 1, ypos - xpos - 1); // X-Wert
            dx:= StrToFloat(my_str) * GerberInfo.ScaleX * cscale;
          end;
          SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
          SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
          SgBlocks.Cells[3, grow]:= 'D' + IntToStr(apert);
        end else begin
          my_str:= copy(my_line, xpos + 1, dpos - xpos - 1); // X-Wert
          dx:= StrToFloat(my_str) * GerberInfo.ScaleX * cscale;
          SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
          SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
          SgBlocks.Cells[3, grow]:= 'D' + IntToStr(apert);
        end;
        if (dx <= gerber_bottomleft.X) and (dy <= gerber_bottomleft.Y) then begin
          gerber_bottomleft.X:= dx;
          gerber_bottomleft.Y:= dy;
          GerberInfo.RefPointRow:= gRow;
        end;
      end;
    end;
    if AbortFlag then
      break;
  end;
  CloseFile(my_ReadFile);
  // Aperture-Werte in Haupt-Tabelle übertragen
  with Form1 do begin
    for grow:= 1 to SgBlocks.RowCount - 1 do begin
      // Offset unten links abziehen
      dx:= StrDotToFloat(SgBlocks.Cells[1, grow]) - gerber_bottomleft.X;
      dy:= StrDotToFloat(SgBlocks.Cells[2, grow]) - gerber_bottomleft.Y;
      SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
      SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
      for arow := 1 to SgApert.RowCount - 1 do
        if SgBlocks.Cells[3, grow] = SgApert.Cells[0, arow] then begin
          SgBlocks.Cells[4, grow]:= SgApert.Cells[1, arow];
          SgBlocks.Cells[5, grow]:= SgApert.Cells[2, arow];
          SgBlocks.Cells[6, grow]:= SgApert.Cells[3, arow];
          break;
        end;
    end;
    Timer1.Enabled:= true;
    TimerDraw.Enabled:= true;
    Trackbar1.Position:= 5;
    SgBlocks.Row:= GerberInfo.RefPointRow;
  end;
  RefreshGerberDrawingSema:= true;
end;

// #############################################################################

procedure BitBtnSavePosClick(Sender: TObject);
begin
  EditSavedX.Text:= FloatToStrDot(Mpos.X);
  EditSavedY.Text:= FloatToStrDot(Mpos.Y);
  EditSavedZ.Text:= FloatToStrDot(Mpos.Z);
end;

procedure BitBtnGotoPosClick(Sender: TObject);
begin
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G53 G0 X' +  EditSavedX.Text + 'Y' + EditSavedY.Text);
  SendSingleCommandStr('G53 G0 Z' + EditSavedZ.Text);
end;


procedure BitBtnAllZeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 X0Y0Z0');
  RefPointX:= 0;
  RefPointY:= 0;
  RefreshGerberDrawingSema:= true;
  ZeroXok:= true;
  ZeroYok:= true;
  ZeroZok:= true;
  ZeroAllok:= true;
end;

procedure BitBtnXzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 X0');
  RefPointX:= 0;
  ZeroXok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure BitBtnYzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 Y0');
  RefPointY:= 0;
  ZeroYok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure BitBtnZzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 Z0');
  ZeroZok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure BtnBGAClick(Sender: TObject);
begin
  EditPitchX.Text:= '1.0';
  EditPitchY.Text:= '1.0';
  EditPadsX.Text:= '15';
  EditPadsY.Text:= '15';
  BitBtnCreatePatternClick(Sender);
end;

procedure BtnSO16Click(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '5.5';
  EditPadsX.Text:= '8';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure BtnSO16WClick(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '9.5';
  EditPadsX.Text:= '8';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure BtnSO8Click(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '5.5';
  EditPadsX.Text:= '4';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure Button1Click(Sender: TObject);
begin
  EditPitchY.Text:= '1.27';
  EditPitchX.Text:= '9.5';
  EditPadsY.Text:= '8';
  EditPadsX.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure Button4Click(Sender: TObject);
begin
  EditPitchY.Text:= '1.27';
  EditPitchX.Text:= '5.5';
  EditPadsY.Text:= '4';
  EditPadsX.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;


procedure BitBtn23Click(Sender: TObject);
begin
  OpenDialog1.DefaultExt:='*.GTP';
  OpenDialog1.InitialDir:= AppFilePath;
  OpenDialog1.Title:= 'Open Gerber Paste File (GTP):';
  if OpenDialog1.Execute then begin
    LastFileName:= OpenDialog1.FileName;
    GerberFileload(OpenDialog1.FileName);
    bm_scroll.X:= 0;
    bm_scroll.Y:= 0;
  end else
    LastFileName:='';
  ZeroXok:= false;
  ZeroYok:= false;
  ZeroZok:= false;
  ZeroAllok:= false;
end;

procedure BitBtnAbortClick(Sender: TObject);
begin
  AbortFlag:= true;
end;

procedure BitBtnHomeClick(Sender: TObject);
begin
  if ComPort.Connected then begin
    repeat
    until GetStatus;  // warte auf IDLE
    SendSingleCommandStr('$x');
    SendSingleCommandStr('$h');
    Homed:= true;
  end;
end;

procedure BitBtnJogMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var dx, dy, dz: Double;
  first_loop_done: boolean;
begin
  if not ComPort.Connected then
    exit;
  Timer1.Enabled:= false;
  repeat
  until GetStatus;  // warte auf IDLE
  dx := 0;
  dy := 0;
  dz := 0;
  case (Sender as TBitBtn).tag of   // Welcher Jog-Button?
    0: dx:= 0.1;
    1: dx:= 1;
    2: dx:= 10;
    3: dx:= -0.1;
    4: dx:= -1;
    5: dx:= -10;
    10: dy:= 0.1;
    11: dy:= 1;
    12: dy:= 10;
    13: dy:= -0.1;
    14: dy:= -1;
    15: dy:= -10;
    20: dz:= 0.1;
    21: dz:= 1;
    22: dz:= 10;
    23: dz:= -0.1;
    24: dz:= -1;
    25: dz:= -10;
  end;
  first_loop_done:= false;
  while GetAsyncKeyState(VK_LBUTTON) <> 0 do begin
    if (dx <> 0) and (Mpos.x + dx >= -150) and (Mpos.x + dx <= 0) then begin
      SendSingleCommandStr('G91 G0 X' + FloatToStrDot(dx));
      Mpos.X:= Mpos.x + dx;
    end;
    if (dy <> 0) and (Mpos.y + dy >= -100) and (Mpos.y + dy <= 0) then begin
      // relative Move
      SendSingleCommandStr('G91 G0 Y' + FloatToStrDot(dy));
      Mpos.Y:= Mpos.Y + dy;
    end;
    if (dz <> 0) and (Mpos.z + dz >= -35) and (Mpos.z + dz <= -1) then begin
      // relative Move
      SendSingleCommandStr('G91 G0 Z' + FloatToStrDot(dz));
      Mpos.Z:= Mpos.Z + dz;
    end;
    if not first_loop_done then
      sleep(300)
    else
      sleep(75);
    if GetAsyncKeyState(VK_LBUTTON) = 0 then
      break;
    SendSingleCommandStr('G4 P0');   // Dwell Time
    first_loop_done:= true;
  end; // stop when mouse released
  SendSingleCommandStr('G90');   // absolute Move
  Timer1.Enabled:= true;
end;


procedure BitBtnFeedAirMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SendSingleCommandStr('M3 S1000');   // on
  while GetAsyncKeyState(VK_LBUTTON) <> 0 do begin
  end;
  SendSingleCommandStr('M5');   // on
  repeat
  until GetStatus;  // warte auf IDLE
end;

procedure BitBtnRunClick(Sender: TObject);
var gRow: Integer;
  dx, dy, rx, ry: Double;
begin
  aMemo1.Lines.Clear;
  AbortFlag:= false;

  for gRow:= 1 to SgBlocks.RowCount - 1 do begin
    if AbortFlag then
      break;
    if SgBlocks.Cells[6, gRow] = 'OFF' then
      continue;
    SgBlocks.Row:= gRow;
    SearchApert(SgBlocks.Cells[3, gRow]);
    RefreshGerberDrawingSema:= true;
    Application.ProcessMessages;  // damit Abbruch möglich ist
    dx:= StrDotToFloat(SgBlocks.Cells[1, gRow]);
    dy:= StrDotToFloat(SgBlocks.Cells[2, gRow]);
    rx:= StrDotToFloat(SgBlocks.Cells[4, gRow]);
    ry:= StrDotToFloat(SgBlocks.Cells[5, gRow]);
    Dispense(dx, dy, rx, ry);
  end;
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
end;

procedure BitBtnGotoZeroClick(Sender: TObject);
begin
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
  SendSingleCommandStr('G0 Z0');
end;


procedure BitBtnCreatePatternClick(Sender: TObject);
var padsX, padsY, countX, countY, grow: Integer;
  dx, dy: Double;
  pitchX, pitchY, dia: Double;
begin
  {Form1.}TimerDraw.Enabled:= false;
  padsX:= StrToInt(EditPadsX.Text);
  padsY:= StrToInt(EditPadsY.Text);
  pitchX:= StrDotToFloat(EditPitchX.Text);
  pitchY:= StrDotToFloat(EditPitchY.Text);
  grow:= 0;
  dia:= fmin(pitchX, pitchY) * 0.6;
  for countY := 0 to padsY - 1 do begin
    dy:= pitchY * countY;
    for countX := 0 to padsX - 1 do begin
      Application.ProcessMessages;
      inc(grow);
      SgBlocks.RowCount:= grow + 1;
      dx:= pitchX * countX;
      SgBlocks.Cells[0, grow]:= IntToSTr(grow);
      SgBlocks.Cells[1, grow]:= FloatToSTrDot(dx);
      SgBlocks.Cells[2, grow]:= FloatToSTrDot(dy);
      SgBlocks.Cells[3, grow]:= 'D10';
      SgBlocks.Cells[4, grow]:= FloatToSTrDot(dia);
      SgBlocks.Cells[5, grow]:= FloatToSTrDot(dia);
      SgBlocks.Cells[6, grow]:= 'Circle';
    end;
  end;
  SgApert.RowCount:= 2;
  SgApert.Cells[0, 1]:= 'D10';
  SgApert.Cells[1, 1]:= FloatToSTrDot(dia);
  SgApert.Cells[2, 1]:= FloatToSTrDot(dia);
  SgApert.Cells[3, 1]:= 'Circle';
  SgBlocks.Row:= 1;
  Trackbar1.Position:= 12;
  RefPointX:= 0;
  RefPointY:= 0;
  {Form1.}TimerDraw.Enabled:= true;
  bm_scroll.X:= 0;
  bm_scroll.Y:= 0;
  gerber_bottomleft.X:= 0;
  gerber_bottomleft.Y:= 0;
  RefreshGerberDrawingSema:= true;
end;

procedure Button_OpenClick(Sender: TObject);
begin
  Homed:= false;
  if ComPort.Connected then begin
    ComPort.Close;
    LabelStatus.Caption:= 'Offline';
  end else begin
    aMemo1.Lines.Clear;
    ComPort.Open;
    ComPort.WriteStr('$x'+#13);
    sleep(300);
    Application.ProcessMessages;
    SendSingleCommandStr('$h');
    Homed:= true;
  end;
end;

procedure Button_SettingsClick(Sender: TObject);
begin
  ComPort.ShowSetupDialog;
  ComPort.StoreSettings(stIniFile, AppFilePath + '\dispenser.ini');
end;

procedure ComPortRxChar(Sender: TObject; Count: Integer);
var
  myStr: String;
begin
  ComPort.ReadStr(myStr, Count);
  aMemo1.Lines.Add(myStr);
end;

procedure DispensePadswiththisAperture1Click(Sender: TObject);
var gRow: Integer;
  dx, dy, rx, ry: Double;
begin
  aMemo1.Lines.Clear;
  AbortFlag:= false;
  for gRow:= 1 to SgBlocks.RowCount - 1 do begin
    if AbortFlag then
      break;
    if SgBlocks.Cells[6, gRow] = 'OFF' then
      continue;
    if SgBlocks.Cells[3, gRow] <> SgApert.Cells[0, SgApert.Row] then
      continue;
    SgBlocks.Row:= gRow;
    RefreshGerberDrawingSema:= true;
    Application.ProcessMessages;  // damit Abbruch möglich ist
    dx:= StrDotToFloat(SgBlocks.Cells[1, gRow]);
    dy:= StrDotToFloat(SgBlocks.Cells[2, gRow]);
    rx:= StrDotToFloat(SgBlocks.Cells[4, gRow]);
    ry:= StrDotToFloat(SgBlocks.Cells[5, gRow]);
    Dispense(dx, dy, rx, ry);
  end;
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
end;

procedure DispensethisPad1Click(Sender: TObject);
var gRow: Integer;
  dx, dy, rx, ry: Double;
begin
  aMemo1.Lines.Clear;
  gRow:= SgBlocks.Row;
  SearchApert(SgBlocks.Cells[3, gRow]);
  RefreshGerberDrawingSema:= true;
  dx:= StrDotToFloat(SgBlocks.Cells[1, gRow]);
  dy:= StrDotToFloat(SgBlocks.Cells[2, gRow]);
  rx:= StrDotToFloat(SgBlocks.Cells[4, gRow]);
  ry:= StrDotToFloat(SgBlocks.Cells[5, gRow]);
  Dispense(dx, dy, rx, ry);
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
end;

procedure DrawingBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then begin
    mouse_start.x:= X;
    mouse_start.y:= Y;
    // search_entry_in_drawing(x,y);
  end;
end;

procedure DrawingBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (ssLeft in Shift) then begin
    bm_scroll.x:= bm_scroll.x + X - mouse_start.x;
    bm_scroll.y:= bm_scroll.y + Y - mouse_start.y;
    mouse_start.x:= X;
    mouse_start.y:= Y;
    Application.ProcessMessages;
    RefreshGerberDrawingSema:= true;
  end;

end;

procedure DrawingBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TrackBar1.SetFocus;
end;

procedure SgBlocksOffClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure SgBlocksRectClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'Rect';
  RefreshGerberDrawingSema:= true;
end;

procedure SgBlocksCircleClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'Circle';
  RefreshGerberDrawingSema:= true;
end;

procedure ComPortAfterClose(Sender: TObject);
begin
  if Button_Open <> nil then
    Button_Open.Caption := 'Open';
end;

procedure ComPortAfterOpen(Sender: TObject);
begin
  Button_Open.Caption := 'Close';
end;

procedure FormActivate(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Ini: TIniFile;
begin
  ComPort.Close;
  Ini := TIniFile.Create(AppFilePath + '\dispenser.ini');
  try
    Ini.WriteInteger('Form', 'Top', form1.Top);
    Ini.WriteInteger('Form', 'Left', form1.Left);
    Ini.WriteInteger('Form', 'Height', form1.Height);
    Ini.WriteInteger('Form', 'Width', form1.Width);
    Ini.WriteString('Positions', 'SavedX', EditSavedX.Text);
    Ini.WriteString('Positions', 'SavedY', EditSavedY.Text);
    Ini.WriteString('Positions', 'SavedZ', EditSavedZ.Text);
    Ini.WriteString('Params', 'PadTime', EditPadTime.Text);
    Ini.WriteString('Params', 'DwellTime', EditDwellTime.Text);
    Ini.WriteInteger('Params', 'Zoom', Trackbar1.Position);
  finally
    Ini.Free;
  end;

end;

procedure FormCreate(Sender: TObject);
 var
   Ini: TIniFile;
begin
  AppFilePath:= ExtractFilePath(Application.ExeName);
  ComPort.LoadSettings(stIniFile, AppFilePath + '\dispenser.ini');
  SgBlocks.Cells[0, 0]:= '#';
  SgBlocks.Cells[1, 0]:= 'Pos X';
  SgBlocks.Cells[2, 0]:= 'Pos Y';
  SgBlocks.Cells[3, 0]:= 'Aperture';
  SgBlocks.Cells[4, 0]:= 'Size X';
  SgBlocks.Cells[5, 0]:= 'Size Y';
  SgBlocks.Cells[6, 0]:= 'Type';
  SgApert.Cells[0, 0]:= '#';
  SgApert.Cells[1, 0]:= 'DX';
  SgApert.Cells[2, 0]:= 'DY';
  SgApert.Cells[3, 0]:= 'Type';
  SgApert.Cells[4, 0]:= 'Ena';
  SgBlocks.Row:= 1;
  SgApert.Row:= 1;
  GerberBitmap:= TBitmap.create;
  LastFileName:='';
  ZeroXok:= false;
  ZeroYok:= false;
  ZeroZok:= false;
  ZeroAllok:= false;
  Homed:= false;
  bm_scroll.X:= 0;
  bm_scroll.Y:= 0;
  Ini := TIniFile.Create(AppFilePath + '\dispenser.ini');
  try
    form1.Top:= Ini.ReadInteger('Form', 'Top', 100);
    form1.Left:= Ini.ReadInteger('Form', 'Left', 100);
    form1.Height:= Ini.ReadInteger('Form', 'Height', 709);
    form1.Width:= Ini.ReadInteger('Form', 'Width', 900);
    EditSavedX.Text:= Ini.ReadString('Positions', 'SavedX', '0.0');
    EditSavedY.Text:= Ini.ReadString('Positions', 'SavedY', '0.0');
    EditSavedZ.Text:= Ini.ReadString('Positions', 'SavedZ', '0.0');
    EditPadTime.Text:= Ini.ReadString('Params', 'PadTime', '50');
    EditDwellTime.Text:= Ini.ReadString('Params', 'DwellTime', '200');
    Trackbar1.Position:= Ini.ReadInteger('Params', 'Zoom', 7);
  finally
    Ini.Free;
  end;
  BitBtnCreatePatternClick(nil);
end;

procedure FormResize(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure MenuItemApertCircleClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'Circle';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'Circle';
  RefreshGerberDrawingSema:= true;
end;

procedure MenuItemApertRectClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'Rect';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'Rect';
  RefreshGerberDrawingSema:= true;
end;

procedure MovetothispadXYClick(Sender: TObject);
var gRow: Integer;
begin
  SendSingleCommandStr('G53 G0 Z-1');
  gRow:= SgBlocks.Row;
  SendSingleCommandStr('G0 X' + SgBlocks.Cells[1, gRow] + ' Y' + SgBlocks.Cells[2, gRow]);
  SendSingleCommandStr('G0 Z0.1');
end;

procedure MenuItemApertOffClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'OFF';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure MenuItemApertDisableAllClick(Sender: TObject);
var arow, gRow: Integer;
begin
  for arow:= 1 to SgApert.RowCount - 1 do
    SgApert.Cells[3, aRow]:= 'OFF';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
      SgBlocks.Cells[6, gRow]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure MenuItemApertEnableAllClick(Sender: TObject);
begin
  if LastFileName <> '' then
    GerberFileload(LastFileName)
  else
    MenuItemApertCircleClick(sender);
end;


procedure SetZeroReferencePoint(Sender: TObject);
begin
  SendSingleCommandStr('G92 X' + SgBlocks.Cells[1, SgBlocks.Row]
                       + 'Y' + SgBlocks.Cells[2, SgBlocks.Row] + 'Z0');
  RefPointX:= StrDotToFloat(SgBlocks.Cells[1, SgBlocks.Row]);
  RefPointY:= StrDotToFloat(SgBlocks.Cells[2, SgBlocks.Row]);
  ZeroXok:= true;
  ZeroYok:= true;
  ZeroZok:= true;
  ZeroAllok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure SgApertDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  SgApert.Font.Style := [];
  with SgApert, SgApert.Canvas do begin
     if (ACol = 0) or (ARow < 1) then begin
      Font.Style := [fsBold];
      // Rect.Left:= Rect.Left - 2;
      TextRect(Rect, Rect.Left + 4, Rect.Top + 2, Cells[ACol, ARow]);
    end;
  end;
end;


procedure SgApertMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  arow, my_col: integer;
  pt: TPoint;
  atest: TDrawGrid;
begin
  SgApert.MouseToCell(X, Y, my_col, aRow);
  SgApert.Row:= arow;
  // Context-Menu
  if (ssRight in Shift) and (arow > 0) then begin
    SgApert.Row:= arow;
    pt.x := X + 15;
    pt.y := Y - 10;
    //pt := SgApert.ClientToScreen2(pt);
    TControl(atest).clienttoscreen(pt);
    PopUpMenu2.Popup(pt.X, pt.Y)
  end;
  if (ssLeft in Shift) and (aRow > 0) then begin
    SearchGerber(SgApert.Cells[0, aRow]);
    RefreshGerberDrawingSema:= true;
  end;
end;

procedure SgApertSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure SgBlocksDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  SgBlocks.Font.Style := [];
  with SgBlocks, sgblocks.Canvas do begin
     if (ACol = 0) or (ARow < 1) then begin
      Font.Style := [fsBold];
      // Rect.Left:= Rect.Left - 2;
      TextRect(Rect, Rect.Left + 4, Rect.Top + 2, Cells[ACol, ARow]);
    end;
  end;
end;

procedure SgBlocksMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  gRow, my_col: integer;
  pt: TPoint;
begin
  SgBlocks.MouseToCell( X,Y, my_col, gRow );
  // Context-Menu
  if (ssRight in Shift) and (gRow > 0) then begin
    SgBlocks.Row:= grow;
    pt.x := X + 15;
    pt.y := Y - 10;
    //pt := SgBlocks.ClientToScreen(pt);   fix
    PopUpMenu1.Popup(pt.X, pt.Y)
  end;
  if (ssLeft in Shift) and (gRow > 0) then begin
    SearchApert(SgBlocks.Cells[3, gRow]);
    RefreshGerberDrawingSema:= true;
  end;
end;

procedure SgBlocksSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 0 then
    CanSelect:= false
  else
    RefreshGerberDrawingSema:= true;
end;

procedure Timer1Timer(Sender: TObject);
begin
  GetStatus;
end;

procedure TimerDrawTimer(Sender: TObject);
begin
  DrawGerber(SgBlocks.Row, SgApert.Row);
  RefreshGerberDrawingSema:= false;
  ZeroAllok:= ZeroXok and ZeroYok and ZeroZok;
  if BitBtnRun.Enabled <> ZeroAllok then begin
    BitBtnRun.Enabled:= ZeroAllok;
    BitBtnAbort.Enabled:= ZeroAllok;
    BitBtnGotoZero.Enabled:= ZeroAllok;
    MovetothispadXY.Enabled:= ZeroAllok;
    DispensethisPad1.Enabled:= ZeroAllok;
    DispensePadswiththisAperture1.Enabled:= ZeroAllok;
  end;

  if BitBtnAllzero.Enabled <> Homed then begin
    BitBtnAllzero.Enabled:= Homed;
    BitBtnXzero.Enabled:= Homed;
    BitBtnYzero.Enabled:= Homed;
    BitBtnZzero.Enabled:= Homed;
    BitBtnHome.Enabled:= Homed;
    BitBtnFeedAir.Enabled:= ComPort.Connected;
    BitBtnGotoPos.Enabled:= Homed;
    SetReferenceNozzleisatthisPad1.Enabled:= Homed;
  end;
end;

procedure TrackBar1Change(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

begin //@main

  writeln(FloatToStr4Dot(PI));
  writeln(FloatToStr7Dot(PI));

 end.
end.

To do as form
https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/blob/main/src/Dispenser.dfm
object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'PasteDispenser 0.92 by cm 8/22'
  ClientHeight = 639
  ClientWidth = 884
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    884
    639)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 359
    Width = 501
    Height = 272
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 497
    ExplicitHeight = 346
  end
  object Bevel1: TBevel
    Left = 289
    Top = 150
    Width = 220
    Height = 163
    Shape = bsFrame
  end
  object LabelStatus: TLabel
    Left = 44
    Top = 36
    Width = 40
    Height = 14
    Caption = 'Offline'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelXM: TLabel
    Left = 8
    Top = 74
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelYM: TLabel
    Left = 8
    Top = 99
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelZM: TLabel
    Left = 8
    Top = 124
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelXW: TLabel
    Left = 76
    Top = 74
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelYW: TLabel
    Left = 76
    Top = 99
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelZW: TLabel
    Left = 76
    Top = 124
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 37
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 39
    Height = 13
    Caption = 'Machine'
  end
  object Label3: TLabel
    Left = 76
    Top = 55
    Width = 25
    Height = 13
    Caption = 'Work'
  end
  object Bevel10: TBevel
    Left = 8
    Top = 151
    Width = 275
    Height = 202
    Shape = bsFrame
  end
  object Label17: TLabel
    Left = 18
    Top = 216
    Width = 43
    Height = 16
    Caption = 'X Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 130
    Top = 160
    Width = 44
    Height = 16
    Caption = 'Y Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 152
    Top = 195
    Width = 70
    Height = 24
    Caption = 'Jogpad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 33023
    Font.Height = 24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 199
    Top = 160
    Width = 43
    Height = 16
    Caption = 'Z Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 457
    Top = 161
    Width = 32
    Height = 13
    Caption = 'Pitch X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 353
    Top = 162
    Width = 32
    Height = 13
    Caption = 'Pads X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 353
    Top = 189
    Width = 32
    Height = 13
    Caption = 'Pads Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 515
    Top = 340
    Width = 112
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Gerber Pad Positions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 681
    Top = 10
    Width = 95
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Gerber Apertures'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DrawingBox: TPaintBox
    Left = 13
    Top = 364
    Width = 492
    Height = 263
    Cursor = crCross
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16384
    DragCursor = crCross
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    OnMouseDown = DrawingBoxMouseDown
    OnMouseMove = DrawingBoxMouseMove
    OnMouseUp = DrawingBoxMouseUp
    ExplicitHeight = 294
  end
  object Label9: TLabel
    Left = 353
    Top = 289
    Width = 92
    Height = 13
    Caption = 'Zero = Bottom Left'
  end
  object Label10: TLabel
    Left = 439
    Top = 328
    Width = 31
    Height = 14
    Caption = 'Zoom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 457
    Top = 189
    Width = 32
    Height = 13
    Caption = 'Pitch Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 457
    Top = 75
    Width = 41
    Height = 13
    Caption = 'Dwell ms'
  end
  object Label13: TLabel
    Left = 457
    Top = 100
    Width = 41
    Height = 13
    Caption = 'Pad Mult'
  end
  object Label14: TLabel
    Left = 516
    Top = 10
    Width = 80
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'GCode Output'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 209
    Top = 55
    Width = 58
    Height = 13
    Caption = 'Saved Mpos'
  end
  object Label20: TLabel
    Left = 432
    Top = 264
    Width = 36
    Height = 13
    Caption = 'Presets'
  end
  object Label21: TLabel
    Left = 457
    Top = 125
    Width = 34
    Height = 13
    Caption = 'Pad ms'
  end
  object Label22: TLabel
    Left = 411
    Top = 50
    Width = 82
    Height = 13
    Caption = 'Dispense all Pads'
  end
  object Memo1: TMemo
    Left = 515
    Top = 30
    Width = 159
    Height = 285
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button_Settings: TButton
    Left = 74
    Top = 6
    Width = 50
    Height = 25
    Caption = 'Setup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button_SettingsClick
  end
  object Button_Open: TButton
    Left = 6
    Top = 6
    Width = 62
    Height = 25
    Caption = 'Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button_OpenClick
  end
  object EditStatus: TEdit
    Left = 134
    Top = 8
    Width = 343
    Height = 21
    TabOrder = 3
    Text = 'EditStatus'
  end
  object BitBtnXzero: TBitBtn
    Left = 134
    Top = 70
    Width = 65
    Height = 24
    Caption = 'X Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnXzeroClick
  end
  object BitBtnYzero: TBitBtn
    Left = 134
    Top = 95
    Width = 65
    Height = 24
    Caption = 'Y Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtnYzeroClick
  end
  object BitBtnZzero: TBitBtn
    Left = 134
    Top = 120
    Width = 65
    Height = 24
    Caption = 'Z Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtnZzeroClick
  end
  object BitBtn9: TBitBtn
    Tag = 12
    Left = 98
    Top = 157
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 7
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn8: TBitBtn
    Tag = 11
    Left = 98
    Top = 185
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 8
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn7: TBitBtn
    Tag = 10
    Left = 98
    Top = 213
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 9
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn10: TBitBtn
    Tag = 13
    Left = 98
    Top = 263
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 10
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn11: TBitBtn
    Tag = 14
    Left = 98
    Top = 290
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 11
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn12: TBitBtn
    Tag = 15
    Left = 98
    Top = 317
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 12
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn4: TBitBtn
    Left = 124
    Top = 238
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 13
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn5: TBitBtn
    Tag = 1
    Left = 152
    Top = 238
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 14
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn6: TBitBtn
    Tag = 2
    Left = 181
    Top = 238
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 15
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn13: TBitBtn
    Tag = 3
    Left = 72
    Top = 238
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 16
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn14: TBitBtn
    Tag = 4
    Left = 44
    Top = 238
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 17
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn15: TBitBtn
    Tag = 5
    Left = 16
    Top = 238
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 18
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn16: TBitBtn
    Tag = 22
    Left = 248
    Top = 157
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 19
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn17: TBitBtn
    Tag = 21
    Left = 248
    Top = 185
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 20
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn18: TBitBtn
    Tag = 20
    Left = 248
    Top = 213
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 21
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn19: TBitBtn
    Tag = 23
    Left = 248
    Top = 263
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 22
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn20: TBitBtn
    Tag = 24
    Left = 248
    Top = 290
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 23
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn21: TBitBtn
    Tag = 25
    Left = 248
    Top = 317
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 24
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtnHome: TBitBtn
    Left = 332
    Top = 95
    Width = 70
    Height = 24
    Caption = 'Home'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnClick = BitBtnHomeClick
  end
  object BitBtnGotoZero: TBitBtn
    Left = 332
    Top = 120
    Width = 70
    Height = 24
    Caption = 'Goto Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    OnClick = BitBtnGotoZeroClick
  end
  object EditPitchX: TEdit
    Left = 410
    Top = 159
    Width = 41
    Height = 21
    TabOrder = 27
    Text = '1.0'
  end
  object EditPadsX: TEdit
    Left = 306
    Top = 159
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 28
    Text = '15'
  end
  object EditPadsY: TEdit
    Left = 306
    Top = 186
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 29
    Text = '15'
  end
  object BitBtnCreateBGA: TBitBtn
    Left = 318
    Top = 213
    Width = 149
    Height = 24
    Caption = 'Create Pattern'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
    OnClick = BitBtnCreatePatternClick
  end
  object BitBtnAbort: TBitBtn
    Left = 332
    Top = 70
    Width = 70
    Height = 24
    Caption = 'Abort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
    OnClick = BitBtnAbortClick
  end
  object BitBtn23: TBitBtn
    Left = 712
    Top = 329
    Width = 164
    Height = 24
    Anchors = [akTop, akRight]
    Caption = 'Open Gerber Paste File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
    OnClick = BitBtn23Click
  end
  object SgBlocks: TStringGrid
    Tag = 3
    Left = 515
    Top = 359
    Width = 361
    Height = 272
    Hint = 
      'Left-click to find aperture, right-click to set reference point ' +
      'zero'
    Anchors = [akTop, akRight, akBottom]
    ColCount = 7
    DefaultRowHeight = 18
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 33
    OnDrawCell = SgBlocksDrawCell
    OnMouseDown = SgBlocksMouseDown
    OnSelectCell = SgBlocksSelectCell
    ColWidths = (
      28
      45
      45
      75
      45
      45
      50)
    RowHeights = (
      18
      18)
  end
  object SgApert: TStringGrid
    Tag = 3
    Left = 680
    Top = 30
    Width = 196
    Height = 285
    Hint = 'Left-click to find first pad of aperture, right-click to edit'
    Anchors = [akTop, akRight]
    ColCount = 4
    DefaultRowHeight = 18
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 34
    OnDrawCell = SgApertDrawCell
    OnMouseDown = SgApertMouseDown
    OnSelectCell = SgApertSelectCell
    ColWidths = (
      45
      40
      40
      45)
    RowHeights = (
      18
      18)
  end
  object TrackBar1: TTrackBar
    Left = 289
    Top = 326
    Width = 144
    Height = 30
    Max = 15
    Min = 3
    Position = 5
    TabOrder = 35
    OnChange = TrackBar1Change
  end
  object BitBtnRun: TBitBtn
    Left = 332
    Top = 45
    Width = 70
    Height = 24
    Caption = 'Run'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 36
    OnClick = BitBtnRunClick
  end
  object EditPitchY: TEdit
    Left = 410
    Top = 186
    Width = 41
    Height = 21
    TabOrder = 37
    Text = '1.0'
  end
  object EditDwellTime: TEdit
    Left = 410
    Top = 72
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 38
    Text = '100'
  end
  object EditPadTime: TEdit
    Left = 410
    Top = 97
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 39
    Text = '100'
  end
  object EditSavedX: TEdit
    Left = 209
    Top = 72
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 40
    Text = '0.0'
  end
  object EditSavedY: TEdit
    Left = 209
    Top = 97
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 41
    Text = '0.0'
  end
  object EditSavedZ: TEdit
    Left = 209
    Top = 122
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 42
    Text = '0.0'
  end
  object BitBtnGotoPos: TBitBtn
    Left = 277
    Top = 95
    Width = 44
    Height = 49
    Caption = 'Goto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 43
    OnClick = BitBtnGotoPosClick
  end
  object BitBtnSavePos: TBitBtn
    Left = 277
    Top = 70
    Width = 44
    Height = 24
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 44
    OnClick = BitBtnSavePosClick
  end
  object BitBtnAllzero: TBitBtn
    Left = 134
    Top = 45
    Width = 65
    Height = 24
    Caption = 'All Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 45
    OnClick = BitBtnAllZeroClick
  end
  object BitBtnFeedAir: TBitBtn
    Left = 157
    Top = 290
    Width = 65
    Height = 24
    Caption = 'Feed Air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 28912
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 46
    OnMouseDown = BitBtnFeedAirMouseDown
  end
  object BtnSO8: TButton
    Left = 318
    Top = 241
    Width = 40
    Height = 20
    Caption = 'SO8 H'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 47
    OnClick = BtnSO8Click
  end
  object BtnSO16W: TButton
    Left = 364
    Top = 241
    Width = 58
    Height = 20
    Caption = 'SO16W H'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 48
    OnClick = BtnSO16WClick
  end
  object BtnBGA: TButton
    Left = 427
    Top = 241
    Width = 40
    Height = 20
    Caption = 'BGA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 49
    OnClick = BtnBGAClick
  end
  object Button1: TButton
    Left = 364
    Top = 262
    Width = 58
    Height = 20
    Caption = 'SO16W V'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 50
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 318
    Top = 262
    Width = 40
    Height = 20
    Caption = 'SO8 V'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 51
    OnClick = Button4Click
  end
  object EditPadTimeRO: TEdit
    Left = 410
    Top = 122
    Width = 41
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 52
    Text = '0'
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = ComPortAfterOpen
    OnAfterClose = ComPortAfterClose
    OnRxChar = ComPortRxChar
    Left = 512
    Top = 204
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 528
    Top = 140
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 148
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 424
    object SetReferenceNozzleisatthisPad1: TMenuItem
      Caption = 'Set Zero Reference (Nozzle is at this Pad)'
      OnClick = SetZeroReferencePoint
    end
    object MovetothispadXY: TMenuItem
      Caption = 'Move to this Pad (XY)'
      OnClick = MovetothispadXYClick
    end
    object DispensethisPad1: TMenuItem
      Caption = 'Dispense this Pad'
      OnClick = DispensethisPad1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EnableAperture1: TMenuItem
      Caption = 'Circle'
      OnClick = SgBlocksCircleClick
    end
    object DisableAperture1: TMenuItem
      Caption = 'Rectangle'
      OnClick = SgBlocksRectClick
    end
    object DisableallApertures1: TMenuItem
      Caption = 'None (OFF)'
      OnClick = SgBlocksOffClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 736
    Top = 176
    object DispensePadswiththisAperture1: TMenuItem
      Caption = 'Dispense Pads with this Aperture'
      OnClick = DispensePadswiththisAperture1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItemApertCircle: TMenuItem
      Caption = 'Circle'
      OnClick = MenuItemApertCircleClick
    end
    object MenuItemApertRect: TMenuItem
      Caption = 'Rectangle'
      OnClick = MenuItemApertRectClick
    end
    object MenuItemApertOff: TMenuItem
      Caption = 'None (OFF)'
      OnClick = MenuItemApertOffClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuItemApertDisableAll: TMenuItem
      Caption = 'Disable All'
      OnClick = MenuItemApertDisableAllClick
    end
    object MenuItemApertEnableAll: TMenuItem
      Caption = 'Enable All'
      OnClick = MenuItemApertEnableAllClick
    end
  end
  object TimerDraw: TTimer
    Interval = 100
    OnTimer = TimerDrawTimer
    Left = 528
    Top = 76
  end
end
    