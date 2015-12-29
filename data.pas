unit data;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  d2: Extended;
  th, lgR: array of Extended;
  //th, lgR:Extended;

implementation

{$R *.lfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  f1, size, i, n: integer;
  str, num: string;
  c: Char;
  isth: Boolean;
  fn1 :TFileName;
begin
  OpenDialog1.Execute;
  fn1 := OpenDialog1.FileName;
  f1 := FileOpen(fn1, fmOpenRead);
  str := '';
  n := 3;
//统计回车符数,确定组数,n有余量避免意外
  while FileRead(f1, c, 1) = 1 do
    if c=chr(13) then n := n + 1;

//提取数据

  //Image1.Canvas.Pen.Color := clRed;
  setlength(th, i);
  setlength(lgR, i);
  isth := True;
  i := 1;
  FileSeek(f1, 0, 0);
  while FileRead(f1, c, 1) = 1 do
  //showmessage(c);
  begin
    if ((c>='0') and (c<='9')) or (c='.') or (c='E') or (c='e') or (c='-') then begin
      str := str + c;
    end
    else if isth = True and (str<>'') then begin
      th[i] := strtofloat(str);
      //showmessage(str);
      str := '';
      isth := False;
    end
    else if isth = False and (str<>'') then begin
      lgR[i] := strtofloat(str);
      str := '';
      isth := True;
      i := i + 1;
      //// := clRed;
    end;
  end;
  FileClose(f1);
  Image1.Canvas.Pen.Color := clRed;
  for i := 1 to n do
    Image1.Canvas.LineTo(trunc(450/n*i), 300 - trunc(lgR[i]*3));

end;

end.
