object DM2: TDM2
  OldCreateOrder = False
  Left = 202
  Top = 114
  Height = 384
  Width = 480
  object Otkaz: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM OTKAZ'
      'WHERE DATEBEGIN="01.01.80"')
    Left = 24
    Top = 128
    object OtkazOTKAZ_ID: TIntegerField
      FieldName = 'OTKAZ_ID'
      Required = True
    end
    object OtkazNUMBER: TIntegerField
      DisplayLabel = '����� ������'
      FieldName = 'NUMBER'
      Required = True
    end
    object OtkazDATEBEGIN: TDateTimeField
      DisplayLabel = '���� �������'
      FieldName = 'DATEBEGIN'
      Required = True
    end
    object OtkazDATEEND: TDateTimeField
      DisplayLabel = '���� ���������'
      FieldName = 'DATEEND'
      Required = True
    end
    object OtkazEXDATEBEGIN: TDateTimeField
      DisplayLabel = '��������'
      FieldName = 'EXDATEBEGIN'
    end
    object OtkazEXDATEEND: TDateTimeField
      DisplayLabel = '��������'
      FieldName = 'EXDATEEND'
    end
    object OtkazTRIVALIST: TSmallintField
      DisplayLabel = '���������'
      FieldName = 'TRIVALIST'
      Required = True
    end
    object OtkazSH: TIBStringField
      DisplayLabel = '��'
      FieldName = 'SH'
      Required = True
      Size = 2
    end
    object OtkazPH: TIBStringField
      DisplayLabel = '��'
      FieldName = 'PH'
      Size = 2
    end
    object OtkazSLUJBA: TIBStringField
      DisplayLabel = '������'
      FieldName = 'SLUJBA'
      Required = True
      Size = 1
    end
    object OtkazSYSTEM: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'SYSTEM'
      Required = True
      Size = 1
    end
    object OtkazSTATION1: TIBStringField
      DisplayLabel = '������� 1'
      FieldName = 'STATION1'
      Required = True
      Size = 30
    end
    object OtkazSTATION2: TIBStringField
      DisplayLabel = '������� 2'
      FieldName = 'STATION2'
      Size = 30
    end
    object OtkazPROYAVA: TIBStringField
      DisplayLabel = '����������'
      FieldName = 'PROYAVA'
      Required = True
      Size = 75
    end
    object OtkazELEMENT: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'ELEMENT'
      Required = True
      Size = 25
    end
    object OtkazCAUSE1: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE1'
      Required = True
      Size = 50
    end
    object OtkazCAUSE2: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE2'
      Size = 50
    end
    object OtkazCAUSE3: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE3'
      Size = 50
    end
    object OtkazCAUSE4: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE4'
      Size = 50
    end
    object OtkazCAUSE5: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE5'
      Size = 50
    end
    object OtkazCAUSE6: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'CAUSE6'
      Size = 50
    end
    object OtkazCLAS1: TIBStringField
      DisplayLabel = '���� �������'
      FieldName = 'CLAS1'
      Size = 40
    end
    object OtkazCLAS2: TIBStringField
      DisplayLabel = '���� �������'
      FieldName = 'CLAS2'
      Size = 40
    end
    object OtkazPROIZD: TSmallintField
      DisplayLabel = '� �������'
      FieldName = 'PROIZD'
    end
    object OtkazWOPROIZD: TSmallintField
      DisplayLabel = '��� ������'
      FieldName = 'WOPROIZD'
    end
    object OtkazPRIGLASIT: TSmallintField
      DisplayLabel = '�� ���������������'
      FieldName = 'PRIGLASIT'
    end
    object OtkazCLOSED: TSmallintField
      DisplayLabel = '��������'
      FieldName = 'CLOSED'
    end
    object OtkazPASAJIR: TSmallintField
      DisplayLabel = '����������'
      FieldName = 'PASAJIR'
    end
    object OtkazPRIMISKIH: TSmallintField
      DisplayLabel = '�������'
      FieldName = 'PRIMISKIH'
    end
    object OtkazVANTAJNIH: TSmallintField
      DisplayLabel = '�������'
      FieldName = 'VANTAJNIH'
    end
    object OtkazTIMEPAS: TSmallintField
      DisplayLabel = '��� �����.'
      FieldName = 'TIMEPAS'
    end
    object OtkazTIMEPRIM: TSmallintField
      DisplayLabel = '��� ����.'
      FieldName = 'TIMEPRIM'
    end
    object OtkazTIMEVANT: TSmallintField
      DisplayLabel = '��� ����.'
      FieldName = 'TIMEVANT'
    end
    object OtkazINCIDENT: TIBStringField
      DisplayLabel = '���������'
      FieldName = 'INCIDENT'
      Size = 1
    end
    object OtkazPRIMINCID: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'PRIMINCID'
      Size = 50
    end
    object OtkazPRIMCLOSED: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'PRIMCLOSED'
      Size = 50
    end
    object OtkazNUMBERPRIB: TIntegerField
      DisplayLabel = '����� �������'
      FieldName = 'NUMBERPRIB'
    end
    object OtkazMADE: TSmallintField
      DisplayLabel = '���� ������������'
      FieldName = 'MADE'
    end
    object OtkazCHECKED: TDateTimeField
      DisplayLabel = '���������'
      FieldName = 'CHECKED'
    end
    object OtkazNUMBERELEM: TIBStringField
      DisplayLabel = '����� ��������'
      FieldName = 'NUMBERELEM'
      Size = 50
    end
    object OtkazPRIMITKA: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'PRIMITKA'
      Size = 500
    end
    object OtkazTEKST1: TIBStringField
      DisplayLabel = '��������� ����'
      FieldName = 'TEKST1'
      Size = 500
    end
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\SCB\Database\SCB.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 32
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Left = 104
    Top = 24
  end
  object DSOtkaz: TDataSource
    DataSet = Otkaz
    Left = 24
    Top = 184
  end
  object Tech: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = TechAfterInsert
    BeforePost = TechBeforePost
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TECH_ID'
        DataType = ftInteger
      end
      item
        Name = 'RIK'
        DataType = ftInteger
      end
      item
        Name = 'SH'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TECH'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'SH'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TECHNO'
    Left = 88
    Top = 128
    object TechTECH_ID: TIntegerField
      FieldName = 'TECH_ID'
    end
    object TechRIK: TIntegerField
      DisplayLabel = 'г�'
      FieldName = 'RIK'
    end
    object TechSH: TIBStringField
      DisplayLabel = '��'
      FieldName = 'SH'
      Size = 5
    end
    object TechTECH: TFloatField
      DisplayLabel = '��������.'
      FieldName = 'TECH'
      DisplayFormat = '####.##'
    end
  end
  object DSTech: TDataSource
    DataSet = Tech
    Left = 88
    Top = 184
  end
  object Vzrez: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = VzrezAfterInsert
    BeforePost = VzrezBeforePost
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'VZREZ_ID'
        DataType = ftInteger
      end
      item
        Name = 'PERIOD'
        DataType = ftDateTime
      end
      item
        Name = 'KOLVO'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'PERIOD'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'VZREZ'
    Left = 144
    Top = 128
    object VzrezVZREZ_ID: TIntegerField
      FieldName = 'VZREZ_ID'
    end
    object VzrezPERIOD: TDateTimeField
      FieldName = 'PERIOD'
    end
    object VzrezKOLVO: TIntegerField
      FieldName = 'KOLVO'
    end
  end
  object DSVzrez: TDataSource
    DataSet = Vzrez
    Left = 144
    Top = 184
  end
  object IBProcT: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'GET_IDT'
    Params = <>
    Left = 88
    Top = 248
  end
  object IBProcV: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'GET_IDV'
    Params = <>
    Left = 160
    Top = 248
  end
  object DSTrain: TDataSource
    DataSet = Train
    Left = 200
    Top = 184
  end
  object Train: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TRAIN'
      'ORDER BY DATEBEGIN')
    Left = 200
    Top = 128
    object TrainTRAIN_ID: TIntegerField
      FieldName = 'TRAIN_ID'
      Required = True
      Visible = False
    end
    object TrainDATEBEGIN: TDateTimeField
      DisplayLabel = '����'
      DisplayWidth = 10
      FieldName = 'DATEBEGIN'
      Required = True
    end
    object TrainSH: TIBStringField
      DisplayLabel = '��'
      FieldName = 'SH'
      Required = True
      Size = 2
    end
    object TrainPASAJIR: TSmallintField
      DisplayLabel = '���.'
      DisplayWidth = 5
      FieldName = 'PASAJIR'
    end
    object TrainPRIMISKIH: TSmallintField
      DisplayLabel = '����'
      DisplayWidth = 5
      FieldName = 'PRIMISKIH'
    end
    object TrainVANTAJNIH: TSmallintField
      DisplayLabel = '����'
      DisplayWidth = 5
      FieldName = 'VANTAJNIH'
    end
    object TrainTIMEPAS: TSmallintField
      DisplayLabel = '���'
      DisplayWidth = 5
      FieldName = 'TIMEPAS'
    end
    object TrainTIMEPRIM: TSmallintField
      DisplayLabel = '���'
      DisplayWidth = 5
      FieldName = 'TIMEPRIM'
    end
    object TrainTIMEVANT: TSmallintField
      DisplayLabel = '���'
      DisplayWidth = 5
      FieldName = 'TIMEVANT'
    end
    object TrainSTATION1: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'STATION1'
      Required = True
      Size = 24
    end
    object TrainSTATION2: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'STATION2'
      Required = True
      Size = 24
    end
    object TrainPRIMITKA: TIBStringField
      DisplayLabel = '�������'
      FieldName = 'PRIMITKA'
      Size = 128
    end
  end
end
