object dmSD: TdmSD
  OldCreateOrder = False
  Height = 247
  Width = 426
  object conSDDatabase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Nextcloud\pseudo' +
      '_amazon\sd_database.mdb;Mode=ReadWrite;Persist Security Info=Fal' +
      'se;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet O' +
      'LEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Data' +
      'base Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLED' +
      'B:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";' +
      'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Databas' +
      'e=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:C' +
      'ompact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object tblSD: TADOTable
    Active = True
    Connection = conSDDatabase
    CursorType = ctStatic
    TableName = 'table_one'
    Left = 96
    Top = 8
  end
  object dscSD: TDataSource
    DataSet = tblSD
    Left = 152
    Top = 8
  end
end
