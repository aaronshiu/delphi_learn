unit form_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, data_module_unit,
  Vcl.StdCtrls;

type
    TformOne = class(TForm)
    dbg_SD_table : TDBGrid;
    showGridBtn : TButton;
    queryBtn: TButton;
    procedure showGridBtnClick(Sender: TObject);
    procedure restoreBtnClick(Sender: TObject);
    procedure backupBtnClick(Sender: TObject);
    procedure queryBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure formatGrid;
  public
    { Public declarations }
  end;
var
  formOne: TformOne;
implementation

{$R *.dfm}

procedure TformOne.formatGrid;
begin
// adjust grid col widths
dbg_SD_table.Columns[0].Width := 20;
dbg_SD_table.Columns[1].Width := 120;
dbg_SD_table.Columns[2].Width := 120;
dbg_SD_table.Columns[3].Width := 50;
dbg_SD_table.Columns[4].Width := 50;
dbg_SD_table.Columns[5].Width := 50;
end;

procedure TformOne.backupBtnClick(Sender: TObject);
begin
data_module.createBackup;
end;

procedure TformOne.queryBtnClick(Sender: TObject);
var
  str_query : string;
begin
str_query := 'SELECT * FROM table_one WHERE price < :specificValue ORDER BY pp_gb, price ASC;';
data_module.sendQuery(str_query);
formatGrid;
end;

procedure TformOne.restoreBtnClick(Sender: TObject);
begin
data_module.restoreBackup;
end;

procedure TformOne.showGridBtnClick(Sender: TObject);
begin
dbg_SD_table.DataSource := data_module.dscSD;
formatGrid;
end;

end.
