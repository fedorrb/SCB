unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Db, IBCustomDataSet,
  IBStoredProc;

type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm10.Button1Click(Sender: TObject);
begin
 DM2.Tech.Active:=false;
 Close;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
 DM2.Tech.Active:=true;
end;

end.
