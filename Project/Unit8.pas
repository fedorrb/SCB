unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, ComObj,
  ActiveX, OleServer, Excel97;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label2: TLabel;
    CheckBox2: TCheckBox;
    Edit2: TEdit;
    Label3: TLabel;
    CheckBox3: TCheckBox;
    Edit3: TEdit;
    Label4: TLabel;
    CheckBox4: TCheckBox;
    Edit4: TEdit;
    Label5: TLabel;
    CheckBox5: TCheckBox;
    Edit5: TEdit;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    CheckBox8: TCheckBox;
    ComboBox1: TComboBox;
    CheckBox9: TCheckBox;
    ComboBox2: TComboBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    Button2: TButton;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    DBNavigator1: TDBNavigator;
    CheckBox14: TCheckBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    XLApp:Excel97.TExcelApplication;
    procedure CreateExcel(NewInstance:boolean);
    procedure ShowExcel;
    procedure ReleaseExcel;
    function AddWorkBook(const WorkBookName:string):Excel97.ExcelWorkBook;
  public
    { Public declarations }
    property IXLApp:Excel97.TExcelApplication read XLApp;
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit2, Unit3;

{$R *.DFM}

procedure TForm8.CreateExcel(NewInstance:boolean);
begin
try
 if not Assigned(IXLApp) then begin
   XLApp:=Excel97.TExcelApplication.Create(Self);
    if NewInstance then XLApp.ConnectKind:=ckNewInstance;
     XLApp.Connect;
                              end;
except
 ShowMessage('Помилка при роботі з Excel!');
end; //try-except
end;

procedure TForm8.ShowExcel;
begin
 if Assigned(IXLApp) then
  begin
   IXLApp.Visible[0]:=true;
    if IXLApp.WindowState[0] = TOLEEnum(Excel97.xlMinimized) then
     IXLApp.WindowState[0]:=TOLEEnum(Excel97.xlNormal);
     IXLApp.ScreenUpdating[0]:=true;
  end;
end;

procedure TForm8.ReleaseExcel;
begin
  if Assigned(IXLApp) then
   begin
    if (IXLApp.Workbooks.Count > 0) and (not IXLApp.Visible[0]) then
     begin
      IXLApp.WindowState[0] := TOLEEnum(xlMinimized);
      IXLApp.Visible[0] := true;
       if not(csDestroying in ComponentState) then Self.SetFocus;
      Application.BringToFront;
     end;
   end;
   FreeAndNil(XLApp);
end;

function TForm8.AddWorkbook(const WorkbookName: string): Excel97.ExcelWorkbook;
begin
  Result := nil;
  if Assigned(XLApp) and (trim(WorkbookName) <> '') then begin
    Result := XLApp.Workbooks.Add(WorkbookName, 0);
  end;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
if (Screen.Width > 800) and (Screen.Height > 600) then Form8.Position:=poScreenCenter;
 DTP1.Date:=Date-30;
 DTP2.Date:=Date;
 ComboBox1.ItemIndex:=-1;
 ComboBox2.ItemIndex:=-1;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
 var i:integer;
begin
if (Edit1.Enabled) and (Edit1.Text = '') then
 begin
  CheckBox1.Checked:=false;
  Edit1.Enabled:=false;
 end;
if (Edit2.Enabled) and (Edit2.Text = '') then
 begin
  CheckBox2.Checked:=false;
  Edit2.Enabled:=false;
 end;
if (Edit3.Enabled) and (Edit3.Text = '') then
 begin
  CheckBox3.Checked:=false;
  Edit3.Enabled:=false;
 end;
if (Edit4.Enabled) and (Edit4.Text = '') then
 begin
  CheckBox4.Checked:=false;
  Edit4.Enabled:=false;
 end;
if (Edit5.Enabled) and (Edit5.Text = '') then
 begin
  CheckBox5.Checked:=false;
  Edit5.Enabled:=false;
 end;
if (ComboBox1.Enabled) and (ComboBox1.ItemIndex = -1) then
 begin
  CheckBox8.Checked:=false;
  ComboBox1.Enabled:=false;
 end;
if (ComboBox2.Enabled) and (ComboBox2.ItemIndex = -1) then
 begin
  CheckBox9.Checked:=false;
  ComboBox2.Enabled:=false;
 end;
if DTP2.Date > DTP1.Date then
 begin
   DBGrid1.DataSource:=nil;
  with DM2.Otkaz do
   begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from Otkaz');
    SQL.Add('where (DateBegin >= "' + DateToStr(DTP1.Date) + '") and (DateBegin < "' + DateToStr(DTP2.Date+1) + '")');
     if CheckBox1.Checked then
      SQL.Add('and (Trivalist > ' + Edit1.Text + ')');
     if CheckBox2.Checked then
      SQL.Add('and (Slujba = "' + Edit2.Text + '")');
     if CheckBox3.Checked then
      SQL.Add('and (System = "' + Edit3.Text + '")');
     if CheckBox4.Checked then
      SQL.Add('and (SH = "' + Edit4.Text + '")');
     if CheckBox5.Checked then
      SQL.Add('and ((Station1 = "' + Edit5.Text + '") or (Station2 = "' + Edit5.Text + '"))');
     if CheckBox6.Checked then
      SQL.Add('and (Incident <> " ")');
     if CheckBox7.Checked then
      SQL.Add('and ((Pasajir <> 0) or (Primiskih <> 0) or (Vantajnih <> 0))');
     if CheckBox8.Checked then
      SQL.Add('and (Element = "' + ComboBox1.Text + '")');
     if CheckBox9.Checked then
      SQL.Add('and (Clas1 = "' + ComboBox2.Text + '")');
     if CheckBox14.Checked then
      SQL.Add('and (Clas2 = "Неякiсний ремонт в РТД СЦБ")');
     if CheckBox10.Checked then
      SQL.Add('and (Closed <> 0)');
     if CheckBox11.Checked then
      SQL.Add('and (Proizd <> 0)');
     if CheckBox12.Checked then
      SQL.Add('and (WoProizd <> 0)');
     if CheckBox13.Checked then
      SQL.Add('and (Priglasit <> 0)');
    SQL.Add('order by DateBegin');
     Screen.Cursor := crSQLWait;
    Open;
     Screen.Cursor := crDefault;
    First;
     i:=0;
      while not eof do
       begin
        inc(i);
        Next;
       end;
    First;
   end;  //with
    DBGrid1.DataSource:=DM2.DSOtkaz;
  Label10.Caption:=IntToStr(i) + ' шт';
end; //if
end;

procedure TForm8.FormShow(Sender: TObject);
begin
 DM2.Otkaz.Close;
 Label10.Caption:='';
end;

procedure TForm8.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then Edit1.Enabled:=true else Edit1.Enabled:=false;
end;

procedure TForm8.CheckBox2Click(Sender: TObject);
begin
 if CheckBox2.Checked then Edit2.Enabled:=true else Edit2.Enabled:=false;
end;

procedure TForm8.CheckBox3Click(Sender: TObject);
begin
 if CheckBox3.Checked then Edit3.Enabled:=true else Edit3.Enabled:=false;
end;

procedure TForm8.CheckBox4Click(Sender: TObject);
begin
 if CheckBox4.Checked then
  begin
   Edit4.Enabled:=true;
   Edit5.Enabled:=false;
   CheckBox5.Enabled:=false;
  end else
  begin
   Edit4.Enabled:=false;
   CheckBox5.Enabled:=true;
    if CheckBox5.Checked then Edit5.Enabled:=true;
  end;
end;

procedure TForm8.CheckBox8Click(Sender: TObject);
begin
 if CheckBox8.Checked then ComboBox1.Enabled:=true else ComboBox1.Enabled:=false;
end;

procedure TForm8.CheckBox9Click(Sender: TObject);
begin
 if CheckBox9.Checked then ComboBox2.Enabled:=true else ComboBox2.Enabled:=false;
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin
try
 if Edit1.Text <> '' then StrToInt(Edit1.Text);
except
 Edit1.Text:='';
end; //try-except
end;

procedure TForm8.Edit4Exit(Sender: TObject);
begin
 try
  if (StrToInt(Edit4.Text) < 10) and (Length(Edit4.Text) = 1) then Edit4.Text:='0' + Edit4.Text;
 except
  Edit4.Text:='01';
 end; //try-except
end;

procedure TForm8.CheckBox5Click(Sender: TObject);
begin
 if CheckBox5.Checked then Edit5.Enabled:=true else Edit5.Enabled:=false;
end;

procedure TForm8.DBGrid1TitleClick(Column: TColumn);
{
 var f1,f2:string;
     i,j,k:integer;
}
begin
    with DM2.Otkaz do
     begin
      if RecordCount > 0 then
       begin
        Close;
         SQL.Strings[SQL.Count-1]:='order by ' + Column.FieldName;
        Open;
        First;
       end;
    end; //with DM2
    DBGrid1.SelectedIndex:=Column.Index;
{     //код полностью рабочий но медленный
      //с формы убран Gauge1
 if (Column.Index > 9) and (Column.Index < 23) then
  begin
   Gauge1.Progress:=0;
   Gauge1.Visible:=true;
try
 with DM2.Otkaz do
  begin
   DisableControls;
   Gauge1.MaxValue:=RecordCount-1;
   for j:=0 to RecordCount-1 do
    begin
   First;
    k:=0;
    while not EOF do
     begin
       f1:=Fields[Column.Index].AsString;
        Next;
       f2:=Fields[Column.Index].AsString;
        if f1 > f2 then //меняем местами поля
         begin
          for i:=0 to FieldCount-1 do
           begin
            f1:=Fields[i].AsString;
             Prior;
            f2:=Fields[i].AsString;
            Fields[i].AsString:=f1;
             Next;
            Fields[i].AsString:=f2;
           end;  //for i
         end;  //if FieldCompare
         Application.ProcessMessages;
       inc(k);
       if k > RecordCount-j then break;
     end; //while
      Gauge1.Progress:=j;
    end; //for j
  end;  //with DM2
finally
 DM2.Otkaz.EnableControls;
 Gauge1.Visible:=false;
end;
  end; //if}
end;

procedure TForm8.Button2Click(Sender: TObject);
 var LaunchDir:string;
     R,C:integer;
     IWorkBook:Excel97.ExcelWorkBook;
     ISheet:Excel97.ExcelWorkSheet;
begin
 if DBGrid1.SelectedRows.Count > 0 then
  begin
   LaunchDir:='c:\scb\reports\';
   try
    CreateExcel(true);
      if Assigned(IXLApp) then
       begin
        IWorkBook:=AddWorkBook(LaunchDir + 'Prilad.xls');
         try
          ISheet:=IWorkBook.Worksheets.Item['3'] as Excel97.ExcelWorkSheet;
           with DBGrid1.DataSource.DataSet do
            begin
             for C:=1 to FieldCount-1 do ISheet.Cells.Item[4,C].Value:=Fields[C].DisplayLabel;
             for R:=0 to DBGrid1.SelectedRows.Count-1 do
              begin
               GotoBookMark(pointer(DBGrid1.SelectedRows.Items[R]));
               for C:=1 to FieldCount-1 do ISheet.Cells.Item[R+5,C].Value:=Fields[C].AsString;    //Date
              end;
            end;
         finally
          ISheet:=nil;
          IWorkBook:=nil;
         end;
       end; //if assigned
    finally
    ShowExcel;
    ReleaseExcel;
    end;
  end;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
 with DBGrid1 do
  begin
   if Left = 400 then
    begin //разворачиваем
     Left:=5;
     Width:=775;
     Button3.Caption:='Згорнути';
    end else
    begin // сворачиваем
     Left:=400;
     Width:=377;
     Button3.Caption:='Розгорнути';
    end;
  end; //with dbgrid1
end;

end.
