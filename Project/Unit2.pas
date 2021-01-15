unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBDatabase, IBQuery, IBTable, IBStoredProc,
  IBUpdateSQL;

type
  TDM2 = class(TDataModule)
    Otkaz: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DSOtkaz: TDataSource;
    OtkazOTKAZ_ID: TIntegerField;
    OtkazNUMBER: TIntegerField;
    OtkazDATEBEGIN: TDateTimeField;
    OtkazDATEEND: TDateTimeField;
    OtkazEXDATEBEGIN: TDateTimeField;
    OtkazEXDATEEND: TDateTimeField;
    OtkazTRIVALIST: TSmallintField;
    OtkazSH: TIBStringField;
    OtkazPH: TIBStringField;
    OtkazSLUJBA: TIBStringField;
    OtkazSYSTEM: TIBStringField;
    OtkazSTATION1: TIBStringField;
    OtkazSTATION2: TIBStringField;
    OtkazPROYAVA: TIBStringField;
    OtkazELEMENT: TIBStringField;
    OtkazCAUSE1: TIBStringField;
    OtkazCAUSE2: TIBStringField;
    OtkazCAUSE3: TIBStringField;
    OtkazCAUSE4: TIBStringField;
    OtkazCAUSE5: TIBStringField;
    OtkazCAUSE6: TIBStringField;
    OtkazCLAS1: TIBStringField;
    OtkazCLAS2: TIBStringField;
    OtkazPROIZD: TSmallintField;
    OtkazWOPROIZD: TSmallintField;
    OtkazPRIGLASIT: TSmallintField;
    OtkazCLOSED: TSmallintField;
    OtkazPASAJIR: TSmallintField;
    OtkazPRIMISKIH: TSmallintField;
    OtkazVANTAJNIH: TSmallintField;
    OtkazTIMEPAS: TSmallintField;
    OtkazTIMEPRIM: TSmallintField;
    OtkazTIMEVANT: TSmallintField;
    OtkazINCIDENT: TIBStringField;
    OtkazPRIMINCID: TIBStringField;
    OtkazPRIMCLOSED: TIBStringField;
    OtkazNUMBERPRIB: TIntegerField;
    OtkazMADE: TSmallintField;
    OtkazCHECKED: TDateTimeField;
    OtkazNUMBERELEM: TIBStringField;
    OtkazPRIMITKA: TIBStringField;
    OtkazTEKST1: TIBStringField;
    Tech: TIBTable;
    DSTech: TDataSource;
    Vzrez: TIBTable;
    DSVzrez: TDataSource;
    TechTECH_ID: TIntegerField;
    TechSH: TIBStringField;
    TechTECH: TFloatField;
    VzrezVZREZ_ID: TIntegerField;
    VzrezPERIOD: TDateTimeField;
    VzrezKOLVO: TIntegerField;
    IBProcT: TIBStoredProc;
    IBProcV: TIBStoredProc;
    DSTrain: TDataSource;
    Train: TIBQuery;
    TrainTRAIN_ID: TIntegerField;
    TrainDATEBEGIN: TDateTimeField;
    TrainSH: TIBStringField;
    TrainPASAJIR: TSmallintField;
    TrainPRIMISKIH: TSmallintField;
    TrainVANTAJNIH: TSmallintField;
    TrainTIMEPAS: TSmallintField;
    TrainTIMEPRIM: TSmallintField;
    TrainTIMEVANT: TSmallintField;
    TrainSTATION1: TIBStringField;
    TrainSTATION2: TIBStringField;
    TrainPRIMITKA: TIBStringField;
    TechRIK: TIntegerField;
    procedure TechAfterInsert(DataSet: TDataSet);
    procedure VzrezAfterInsert(DataSet: TDataSet);
    procedure VzrezBeforePost(DataSet: TDataSet);
    procedure TechBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

{$R *.DFM}

procedure TDM2.TechAfterInsert(DataSet: TDataSet);
 var Y,M,D:word;
begin
DecodeDate(Date,Y,M,D);
 IBProcT.Close;
 IBProcT.ExecProc;
  Tech.FieldByName('TECH_ID').Value:=IBProcT.ParamByName('TECH').Value;
 IBProcT.Close;
  Tech.FieldByName('RIK').Value := Y;
end;

procedure TDM2.VzrezAfterInsert(DataSet: TDataSet);
begin
 IBProcV.Close;
 IBProcV.ExecProc;
  Vzrez.FieldByName('VZREZ_ID').Value:=IBProcV.ParamByName('VZR').Value;
 IBProcV.Close;
  Vzrez.FieldByName('Period').Value:=DateToStr(Date);
  Vzrez.FieldByName('Kolvo').Value := 1;
end;

procedure TDM2.VzrezBeforePost(DataSet: TDataSet);
begin
 if Vzrez.FieldByName('Period').AsDateTime > Date then
    Vzrez.FieldByName('Period').Value:=DateToStr(Date);
 if Vzrez.FieldByName('Kolvo').AsInteger > 9 then
    Vzrez.FieldByName('Kolvo').Value := 1;
end;

procedure TDM2.TechBeforePost(DataSet: TDataSet);
 var Y,M,D:word;
begin
 DecodeDate(Date,Y,M,D);
 if Tech.FieldByName('RIK').AsInteger > Y then
    Tech.FieldByName('RIK').Value := Y;
end;

end.
