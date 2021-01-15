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
      DisplayLabel = 'Номер запису'
      FieldName = 'NUMBER'
      Required = True
    end
    object OtkazDATEBEGIN: TDateTimeField
      DisplayLabel = 'Дата початку'
      FieldName = 'DATEBEGIN'
      Required = True
    end
    object OtkazDATEEND: TDateTimeField
      DisplayLabel = 'Дата закінчення'
      FieldName = 'DATEEND'
      Required = True
    end
    object OtkazEXDATEBEGIN: TDateTimeField
      DisplayLabel = 'Інтервал'
      FieldName = 'EXDATEBEGIN'
    end
    object OtkazEXDATEEND: TDateTimeField
      DisplayLabel = 'Інтервал'
      FieldName = 'EXDATEEND'
    end
    object OtkazTRIVALIST: TSmallintField
      DisplayLabel = 'Тривалість'
      FieldName = 'TRIVALIST'
      Required = True
    end
    object OtkazSH: TIBStringField
      DisplayLabel = 'ШЧ'
      FieldName = 'SH'
      Required = True
      Size = 2
    end
    object OtkazPH: TIBStringField
      DisplayLabel = 'ПЧ'
      FieldName = 'PH'
      Size = 2
    end
    object OtkazSLUJBA: TIBStringField
      DisplayLabel = 'Служба'
      FieldName = 'SLUJBA'
      Required = True
      Size = 1
    end
    object OtkazSYSTEM: TIBStringField
      DisplayLabel = 'Система'
      FieldName = 'SYSTEM'
      Required = True
      Size = 1
    end
    object OtkazSTATION1: TIBStringField
      DisplayLabel = 'Станція 1'
      FieldName = 'STATION1'
      Required = True
      Size = 30
    end
    object OtkazSTATION2: TIBStringField
      DisplayLabel = 'Станція 2'
      FieldName = 'STATION2'
      Size = 30
    end
    object OtkazPROYAVA: TIBStringField
      DisplayLabel = 'Проявлення'
      FieldName = 'PROYAVA'
      Required = True
      Size = 75
    end
    object OtkazELEMENT: TIBStringField
      DisplayLabel = 'Елемент'
      FieldName = 'ELEMENT'
      Required = True
      Size = 25
    end
    object OtkazCAUSE1: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE1'
      Required = True
      Size = 50
    end
    object OtkazCAUSE2: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE2'
      Size = 50
    end
    object OtkazCAUSE3: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE3'
      Size = 50
    end
    object OtkazCAUSE4: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE4'
      Size = 50
    end
    object OtkazCAUSE5: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE5'
      Size = 50
    end
    object OtkazCAUSE6: TIBStringField
      DisplayLabel = 'Причина'
      FieldName = 'CAUSE6'
      Size = 50
    end
    object OtkazCLAS1: TIBStringField
      DisplayLabel = 'Клас причини'
      FieldName = 'CLAS1'
      Size = 40
    end
    object OtkazCLAS2: TIBStringField
      DisplayLabel = 'Клас причини'
      FieldName = 'CLAS2'
      Size = 40
    end
    object OtkazPROIZD: TSmallintField
      DisplayLabel = 'З проїздом'
      FieldName = 'PROIZD'
    end
    object OtkazWOPROIZD: TSmallintField
      DisplayLabel = 'Без проїзду'
      FieldName = 'WOPROIZD'
    end
    object OtkazPRIGLASIT: TSmallintField
      DisplayLabel = 'По запрошувальному'
      FieldName = 'PRIGLASIT'
    end
    object OtkazCLOSED: TSmallintField
      DisplayLabel = 'Закриття'
      FieldName = 'CLOSED'
    end
    object OtkazPASAJIR: TSmallintField
      DisplayLabel = 'Пасажирські'
      FieldName = 'PASAJIR'
    end
    object OtkazPRIMISKIH: TSmallintField
      DisplayLabel = 'Приміські'
      FieldName = 'PRIMISKIH'
    end
    object OtkazVANTAJNIH: TSmallintField
      DisplayLabel = 'Вантажні'
      FieldName = 'VANTAJNIH'
    end
    object OtkazTIMEPAS: TSmallintField
      DisplayLabel = 'Час пасаж.'
      FieldName = 'TIMEPAS'
    end
    object OtkazTIMEPRIM: TSmallintField
      DisplayLabel = 'Час прим.'
      FieldName = 'TIMEPRIM'
    end
    object OtkazTIMEVANT: TSmallintField
      DisplayLabel = 'Час вант.'
      FieldName = 'TIMEVANT'
    end
    object OtkazINCIDENT: TIBStringField
      DisplayLabel = 'Інциденти'
      FieldName = 'INCIDENT'
      Size = 1
    end
    object OtkazPRIMINCID: TIBStringField
      DisplayLabel = 'Примітка'
      FieldName = 'PRIMINCID'
      Size = 50
    end
    object OtkazPRIMCLOSED: TIBStringField
      DisplayLabel = 'Примітка'
      FieldName = 'PRIMCLOSED'
      Size = 50
    end
    object OtkazNUMBERPRIB: TIntegerField
      DisplayLabel = 'Номер приладу'
      FieldName = 'NUMBERPRIB'
    end
    object OtkazMADE: TSmallintField
      DisplayLabel = 'Дата виготовлення'
      FieldName = 'MADE'
    end
    object OtkazCHECKED: TDateTimeField
      DisplayLabel = 'Перевірено'
      FieldName = 'CHECKED'
    end
    object OtkazNUMBERELEM: TIBStringField
      DisplayLabel = 'Номер елементу'
      FieldName = 'NUMBERELEM'
      Size = 50
    end
    object OtkazPRIMITKA: TIBStringField
      DisplayLabel = 'Примітка'
      FieldName = 'PRIMITKA'
      Size = 500
    end
    object OtkazTEKST1: TIBStringField
      DisplayLabel = 'Текстовий опис'
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
      DisplayLabel = 'Рік'
      FieldName = 'RIK'
    end
    object TechSH: TIBStringField
      DisplayLabel = 'ШЧ'
      FieldName = 'SH'
      Size = 5
    end
    object TechTECH: TFloatField
      DisplayLabel = 'Техоснащ.'
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
      DisplayLabel = 'Дата'
      DisplayWidth = 10
      FieldName = 'DATEBEGIN'
      Required = True
    end
    object TrainSH: TIBStringField
      DisplayLabel = 'ШЧ'
      FieldName = 'SH'
      Required = True
      Size = 2
    end
    object TrainPASAJIR: TSmallintField
      DisplayLabel = 'Пас.'
      DisplayWidth = 5
      FieldName = 'PASAJIR'
    end
    object TrainPRIMISKIH: TSmallintField
      DisplayLabel = 'Прим'
      DisplayWidth = 5
      FieldName = 'PRIMISKIH'
    end
    object TrainVANTAJNIH: TSmallintField
      DisplayLabel = 'Вант'
      DisplayWidth = 5
      FieldName = 'VANTAJNIH'
    end
    object TrainTIMEPAS: TSmallintField
      DisplayLabel = 'Час'
      DisplayWidth = 5
      FieldName = 'TIMEPAS'
    end
    object TrainTIMEPRIM: TSmallintField
      DisplayLabel = 'Час'
      DisplayWidth = 5
      FieldName = 'TIMEPRIM'
    end
    object TrainTIMEVANT: TSmallintField
      DisplayLabel = 'Час'
      DisplayWidth = 5
      FieldName = 'TIMEVANT'
    end
    object TrainSTATION1: TIBStringField
      DisplayLabel = 'Станція'
      FieldName = 'STATION1'
      Required = True
      Size = 24
    end
    object TrainSTATION2: TIBStringField
      DisplayLabel = 'Станція'
      FieldName = 'STATION2'
      Required = True
      Size = 24
    end
    object TrainPRIMITKA: TIBStringField
      DisplayLabel = 'Примітка'
      FieldName = 'PRIMITKA'
      Size = 128
    end
  end
end
