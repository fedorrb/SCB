unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Refresh;
    procedure Buttons;
    procedure FormShow(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
      Filter: boolean;
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit5, Unit6;

{$R *.DFM}

procedure TForm4.ToolButton1Click(Sender: TObject);
begin
 Train.ID:=0;
 Form5.ShowModal;
end;

procedure TForm4.ToolButton5Click(Sender: TObject);
begin
 Close;
end;

procedure TForm4.ToolButton2Click(Sender: TObject);
begin
 with Train do
  begin
    ID:=DM2.Train.Fields[0].AsInteger;
    DateBegin:=DM2.Train.Fields[1].AsDateTime;
    SH:=DM2.Train.Fields[2].AsString;
    Pasajir:=DM2.Train.Fields[3].AsInteger;
    Primiskih:=DM2.Train.Fields[4].AsInteger;
    Vantajnih:=DM2.Train.Fields[5].AsInteger;
    TimePas:=DM2.Train.Fields[6].AsInteger;
    TimePrim:=DM2.Train.Fields[7].AsInteger;
    TimeVant:=DM2.Train.Fields[8].AsInteger;
    Station1:=DM2.Train.Fields[9].AsString;
    Station2:=DM2.Train.Fields[10].AsString;
    Primitka:=DM2.Train.Fields[11].AsString;
  end;
 Form5.ShowModal;
end;

procedure TForm4.ToolButton3Click(Sender: TObject);
 var DelNumber: string;
begin
 if MessageDlg('Видалити запис?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    with DM2.Train do
     begin
      DelNumber:=Fields[0].AsString;
      Close;
      SQL.Clear;
      SQL.Append('Delete from Train');
      SQL.Append('where Train_ID =' + DelNumber);
      //    ShowMessage(SQL.Text);
      ExecSQL;
     end;  //with
    Refresh;
  end;
end;

procedure TForm4.Refresh;
begin
 with DM2.Train do
  begin
   Close;
   SQL.Clear;
   SQL.Append('Select * from Train');
    if Form4.Filter then
     SQL.Append('where (DateBegin >= "' + DateToStr(Form6.DTP1.Date)
      + '") and (DateBegin < "' + DateToStr(Form6.DTP2.Date+1) + '")');
   SQL.Append('order by DateBegin');
   Open;
   Buttons;
  end;
end;

procedure TForm4.Buttons;
begin
 if (DM2.Train.Eof = true) and (DM2.Train.Bof = true) then
  begin
   ToolButton2.Enabled:=false;
   ToolButton3.Enabled:=false;
  end else
  begin
   ToolButton2.Enabled:=true;
   ToolButton3.Enabled:=true;
  end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
 Refresh;
end;

procedure TForm4.ToolButton4Click(Sender: TObject);
begin
 if Form6.ShowModal = mrOk then Form4.Filter:=true else Form4.Filter:=false;
 Refresh;
end;

procedure TForm4.FormCreate(Sender: TObject);
 var BW: integer; //buttons width
     i: integer;
begin
 with Form4 do
  begin
   Filter:=false;
   Width:=Screen.Width-20;
   Height:=Screen.Height-60;
   Position:=poScreenCenter;
  end;
 BW:=0;
 for i:=0 to ToolBar1.ButtonCount-1 do BW:=BW+ToolBar1.Buttons[i].Width;
 ToolButton8.Width:=ToolButton8.Width+(ToolBar1.Width-BW);
end;

procedure TForm4.DBGrid1TitleClick(Column: TColumn);
begin
    with DM2.Train do
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
end;

end.
