unit dmSD_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmSD = class(TDataModule)
    conSDDatabase: TADOConnection;
    tblSD: TADOTable;
    dscSD: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSD: TdmSD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
