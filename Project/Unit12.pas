unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, Grids, DBGrids;

type
  TForm12 = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    DBNavigator1: TDBNavigator;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm12.ToolButton1Click(Sender: TObject);
begin
 DM2.IBPribory.Active:=true;
 Close;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
 DM2.IBPribory.Active:=true;
end;

end.
