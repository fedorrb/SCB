unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Grids, DBGrids, ToolWin;

type
  TForm13 = class(TForm)
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  Filtr,FilterDef: string;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm13.ToolButton1Click(Sender: TObject);
begin
 DM2.IBReport.Close;
 ModalResult:=mrOK;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
 if CheckBox1.Checked then
  begin  //filter
   with DM2.IBReport do
    begin
     Close;
     SQL.Clear;
     SQL.Append('Select R.*, O.*');
     SQL.Append('from Report R, Otkaz O');
     SQL.Append('where ((R.Report_ID=O.Otkaz_ID) and');
     SQL.Append('(DateBegin between ' + Filtr + '))');
     SQL.Append('order by DateBegin');
     try
     Open;
     except
      ShowMessage('Помилка при відкритті НД з фільтром!');
      ShowMessage(Filtr);
      Close;
     end; //try-except
    end;
  end else // filter
  begin   //no filter
   with DM2.IBReport do
    begin
     Close;
     SQL.Clear;
     SQL.Append('Select R.*, O.*');
     SQL.Append('from Report R, Otkaz O');
     SQL.Append('where (R.Report_ID=O.Otkaz_ID)');
     SQL.Append('order by DateBegin');
     try
      Open;
     except
      ShowMessage('Помилка при відкритті НД без фільтру!');
      Close;
     end; //try-except
    end; //with
  end;  //no filter
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
 Filtr:='"'+DateToStr(Date-31)+'" and "'+DateToStr(Date+1)+'"';
 FilterDef:=Filtr;
end;

procedure TForm13.CheckBox1Click(Sender: TObject);
begin
 Form13.OnShow(Sender);
end;

procedure TForm13.ToolButton2Click(Sender: TObject);
begin
 Filtr:=InputBox('Фільтр','Введіть дати',FilterDef);
 Form13.OnShow(Sender); 
end;

end.
