unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ToolWin, Mask;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Memo1: TMemo;
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    function Check:boolean;
    procedure ToolButton1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TTrain = record
    ID: integer;
    DateBegin: TDateTime;
    SH: string[2];
    Pasajir: integer;
    Primiskih: integer;
    Vantajnih: integer;
    TimePas: integer;
    TimePrim: integer;
    TimeVant: integer;
    Station1: string;
    Station2: string;
    Primitka: string;
  end;


var
  Form5: TForm5;
  Train: TTrain;

implementation

uses Unit2, Unit4;

{$R *.DFM}

procedure TForm5.ToolButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date:=Date;
 DateTimePicker1.Time:=StrToTime('00:00:00');
 Train.ID:=0;
end;

procedure TForm5.FormShow(Sender: TObject);
  type THoursMinutes = record
         Hours: string[3];
         Minutes: string[2];
       end; //record

  var Minutes1,i:integer;

  function getHours:THoursMinutes;
    var H: string[3];
  begin
    H:=IntToStr(Minutes1 div 60);
    if StrToInt(H) < 100 then H:='0' + H;
    if StrToInt(H) < 10 then H:='0' + H;
    getHours.Hours:=H;
    Minutes1:=Minutes1 mod 60;
    if Minutes1 < 10 then getHours.Minutes:='0' + IntToStr(Minutes1) else getHours.Minutes:=IntToStr(Minutes1);
  end;

begin
 if Train.ID = 0 then
  begin
   ComboBox1.ItemIndex:=-1;
   ComboBox2.Items.Clear;
   ComboBox3.Items.Clear;
   Edit1.Text:='';
   Edit2.Text:='';
   Edit3.Text:='';
   MaskEdit1.Text:='000:00';
   MaskEdit2.Text:='000:00';
   MaskEdit3.Text:='000:00';
   Memo1.Lines.Clear;
   ToolButton1.Caption:='Внести';
  end else
  begin
   DateTimePicker1.Date:=Train.DateBegin;
   ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(Train.SH);
   ComboBox1.onChange(Sender);

    i:=0;
     while i < ComboBox2.Items.Count do
      if Pos(ComboBox2.Items[i],Train.Station1) <> 0 then
        begin
          ComboBox2.ItemIndex:=i;
          Break;
        end else inc(i);
    i:=0;
     while i < ComboBox3.Items.Count do
      if Pos(ComboBox3.Items[i],Train.Station2) <> 0 then
        begin
          ComboBox3.ItemIndex:=i;
          Break;
        end else inc(i);

//   ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(Train.Station1);
//   ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(Train.Station2);
   if Train.Pasajir > 0 then Edit1.Text:=IntToStr(Train.Pasajir)
                        else Edit1.Text:='';
   if Train.Primiskih > 0 then Edit2.Text:=IntToStr(Train.Primiskih)
                          else Edit2.Text:='';
   if Train.Vantajnih > 0 then Edit3.Text:=IntToStr(Train.Vantajnih)
                          else Edit3.Text:='';
   Memo1.Text:=Train.Primitka;
    Minutes1:=Train.TimePas;
     MaskEdit1.Text:=getHours.Hours + ':' + getHours.Minutes;
    Minutes1:=Train.TimePrim;
     MaskEdit2.Text:=getHours.Hours + ':' + getHours.Minutes;
    Minutes1:=Train.TimeVant;
     MaskEdit3.Text:=getHours.Hours + ':' + getHours.Minutes;
   ToolButton1.Caption:='Змінити';  
  end;
 DateTimePicker1.SetFocus; 
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
 ComboBox2.Items.Clear;
 ComboBox3.Items.Clear;
  case ComboBox1.ItemIndex of
    0: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh01.txt');
    1: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh02.txt');
    2: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh03.txt');
    3: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh04.txt');
    4: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh05.txt');
    5: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh06.txt');
    6: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh07.txt');
    7: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh08.txt');
    8: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh10.txt');
    9: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh11.txt');
    10: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh12.txt');
    11: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh13.txt');
    12: ComboBox2.Items.LoadFromFile('c:\scb\stations\sh14.txt');
  end; //case
 ComboBox3.Items:=ComboBox2.Items;
 ComboBox2.ItemIndex:=0;
 ComboBox3.ItemIndex:=0;
end;

procedure TForm5.ComboBox2Exit(Sender: TObject);
begin
 ComboBox3.ItemIndex:=ComboBox2.ItemIndex;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then MaskEdit1.SetFocus;
end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then MaskEdit2.SetFocus;
end;

procedure TForm5.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then MaskEdit3.SetFocus;
end;

procedure TForm5.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Edit2.SetFocus;
end;

procedure TForm5.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Edit3.SetFocus;
end;

procedure TForm5.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Memo1.SetFocus;
end;

procedure TForm5.MaskEdit1Exit(Sender: TObject);
begin

try
 StrToInt(MaskEdit1.Text[1]);
 StrToInt(MaskEdit1.Text[2]);
 StrToInt(MaskEdit1.Text[3]);
 if StrToInt(MaskEdit1.Text[5]) > 5 then MaskEdit1.Text:='000:00';
 StrToInt(MaskEdit1.Text[6]);
except
 MaskEdit1.Text:='000:00';
end;

if MaskEdit1.Text = '000:00' then Edit1.Text:='';
end;

procedure TForm5.MaskEdit2Exit(Sender: TObject);
begin

try
 StrToInt(MaskEdit2.Text[1]);
 StrToInt(MaskEdit2.Text[2]);
 StrToInt(MaskEdit2.Text[3]);
 if StrToInt(MaskEdit2.Text[5]) > 5 then MaskEdit2.Text:='000:00';
 StrToInt(MaskEdit2.Text[6]);
except
 MaskEdit2.Text:='000:00';
end;

if MaskEdit2.Text = '000:00' then Edit2.Text:='';
end;

procedure TForm5.MaskEdit3Exit(Sender: TObject);
begin

try
 StrToInt(MaskEdit3.Text[1]);
 StrToInt(MaskEdit3.Text[2]);
 StrToInt(MaskEdit3.Text[3]);
 if StrToInt(MaskEdit3.Text[5]) > 5 then MaskEdit3.Text:='000:00';
 StrToInt(MaskEdit3.Text[6]);
except
 MaskEdit3.Text:='000:00';
end;

if MaskEdit3.Text = '000:00' then Edit3.Text:='';
end;

function TForm5.Check: boolean;
 var Bound: smallint;
begin
 Check:=true;
  if DateTimePicker1.Date > Now then Check:=false;
  if ComboBox1.ItemIndex < 0 then Check:=false;

  Bound:=9;
   repeat
    inc(Bound);
   until (ComboBox2.Items[Bound] = '--------------------') or (Bound > 60);

  if (ComboBox2.ItemIndex < 0) or (ComboBox2.ItemIndex = Bound) then Check:=false;
  if (ComboBox3.ItemIndex < 0) or (ComboBox3.ItemIndex = Bound) then Check:=false;
  if (ComboBox2.ItemIndex > Bound) and (ComboBox3.ItemIndex > Bound) then Check:=false;

  try
   if StrToInt(Edit1.Text) < 1 then Edit1.Text:='';
  except
   Edit1.Text:='';
  end; //try

  if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') then Check:=false;
  if (Edit1.Text <> '') and (MaskEdit1.Text = '000:00') then Check:=false;
  if (Edit2.Text <> '') and (MaskEdit2.Text = '000:00') then Check:=false;
  if (Edit3.Text <> '') and (MaskEdit3.Text = '000:00') then Check:=false;

end;

procedure TForm5.ToolButton1Click(Sender: TObject);
 var Hours,Minutes: integer;
     m: string;        //minutes
begin
 if Check then
  begin
   with DM2.Train do
    begin
      Close;
      SQL.Clear;
     if Train.ID = 0 then
      begin   //add
       SQL.Append('Insert into Train values');
       SQL.Append('(GEN_ID(G_TRAIN_ID,1),');
       SQL.Append('"' + DateToStr(DateTimePicker1.Date) + '",');
       SQL.Append('"' + ComboBox1.Text + '",');
        if Edit1.Text <> '' then SQL.Append(Edit1.Text + ',')
                            else SQL.Append('0,');
        if Edit2.Text <> '' then SQL.Append(Edit2.Text + ',')
                            else SQL.Append('0,');
        if Edit3.Text <> '' then SQL.Append(Edit3.Text + ',')
                            else SQL.Append('0,');
        Hours:=StrToInt(MaskEdit1.Text[1]+MaskEdit1.Text[2]+MaskEdit1.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit1.Text[5]+MaskEdit1.Text[6]); //пасажирських
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append(M + ',');
        Hours:=StrToInt(MaskEdit2.Text[1]+MaskEdit2.Text[2]+MaskEdit2.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit2.Text[5]+MaskEdit2.Text[6]); //приміських
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append(M + ',');
        Hours:=StrToInt(MaskEdit3.Text[1]+MaskEdit3.Text[2]+MaskEdit3.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit3.Text[5]+MaskEdit3.Text[6]); //вантажних
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append(M + ',');
       SQL.Append('"' + ComboBox2.Text + '",');
       SQL.Append('"' + ComboBox3.Text + '",');
       SQL.Append('"' + Memo1.Text + '")');
       try
//        ShowMessage(SQL.Text);
        ExecSQL;
       except
        ShowMessage('Помилка при внесенні даних!!!');
       end;
      end else   //add
      begin  //modify
       SQL.Append('Update Train set');
       SQL.Append('DateBegin ="' + DateToStr(DateTimePicker1.Date) + '",');
       SQL.Append('SH ="' + ComboBox1.Text + '",');
        if Edit1.Text <> '' then SQL.Append('Pasajir =' + Edit1.Text + ',')
                            else SQL.Append('Pasajir =0,');
        if Edit2.Text <> '' then SQL.Append('Primiskih =' + Edit2.Text + ',')
                            else SQL.Append('Primiskih =0,');
        if Edit3.Text <> '' then SQL.Append('Vantajnih =' + Edit3.Text + ',')
                            else SQL.Append('Vantajnih =0,');
        Hours:=StrToInt(MaskEdit1.Text[1]+MaskEdit1.Text[2]+MaskEdit1.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit1.Text[5]+MaskEdit1.Text[6]); //пасажирських
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append('TimePas =' + M + ',');
        Hours:=StrToInt(MaskEdit2.Text[1]+MaskEdit2.Text[2]+MaskEdit2.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit2.Text[5]+MaskEdit2.Text[6]); //приміських
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append('TimePrim =' + M + ',');
        Hours:=StrToInt(MaskEdit3.Text[1]+MaskEdit3.Text[2]+MaskEdit3.Text[3]);   //час затримки
        Minutes:=StrToInt(MaskEdit3.Text[5]+MaskEdit3.Text[6]); //вантажних
        Minutes:=Minutes+Hours*60;                              //в хвилинах
        M:=IntToStr(Minutes);
       SQL.Append('TimeVant =' + M + ',');
       SQL.Append('Station1 ="' + ComboBox2.Text + '",');
       SQL.Append('Station2 ="' + ComboBox3.Text + '",');
       SQL.Append('Primitka ="' + Memo1.Text + '"');
       SQL.Append('where Train_ID =' + IntToStr(Train.ID));
       try
        ExecSQL;
       except
        ShowMessage('Помилка при оновленні даних !!!');
       end;
      end;  //modify
    end; //with
   Form4.Refresh;
   Close
  end else ShowMessage('Невірно внесено дані!');
end;

procedure TForm5.Edit1Exit(Sender: TObject);
 var i: integer;
begin
i:=0;
try
if Edit1.Text <> '' then i:=StrToInt(Edit1.Text) else
   MaskEdit1.Text:='000:00';

if i > 25 then begin
               if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit1.SetFocus;
              end;
if i = 0 then
 begin
  MaskEdit1.Text:='000:00';
  Edit1.Text:='';
 end;
except
 Edit1.Text:='';
 Edit1.SetFocus;
end; //try-except
end;

procedure TForm5.Edit2Exit(Sender: TObject);
 var i: integer;
begin
i:=0;
try
if Edit2.Text <> '' then i:=StrToInt(Edit2.Text) else
   MaskEdit2.Text:='000:00';

if i > 25 then begin
               if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit2.SetFocus;
              end;
if i = 0 then
 begin
  MaskEdit2.Text:='000:00';
  Edit2.Text:='';
 end;
except
 Edit2.Text:='';
 Edit2.SetFocus;
end; //try-except
end;

procedure TForm5.Edit3Exit(Sender: TObject);
 var i: integer;
begin
i:=0;
try
if Edit3.Text <> '' then i:=StrToInt(Edit3.Text) else
   MaskEdit3.Text:='000:00';
if i > 25 then
 begin
  if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit3.SetFocus;
 end;
if i = 0 then
 begin
  MaskEdit3.Text:='000:00';
  Edit3.Text:='';
 end;
except
 Edit3.Text:='';
 Edit3.SetFocus;
end; //try-except
end;

procedure TForm5.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

end.
