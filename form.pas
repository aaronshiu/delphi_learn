unit form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, dmSD_u, Vcl.StdCtrls, Vcl.Mask;

type
  Tmain = class(TForm)
    dbgSD: TDBGrid;
    showPrice: TDBEdit;
    sortBtn: TButton;
    sizLabel: TLabel;
    pp_gb_btn: TButton;
    insBtn: TButton;
    updBtn: TButton;
    delBtn: TButton;
    showSiz: TDBEdit;
    showID: TDBEdit;
    showSel: TDBEdit;
    showMan: TDBEdit;
    idLabel: TLabel;
    manLabel: TLabel;
    selLabel: TLabel;
    priceLabel: TLabel;
    showPPGB: TDBEdit;
    ppgbLabel: TLabel;
    procedure sortBtnClick(Sender: TObject);
    procedure pp_gb_btnClick(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure updBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

procedure Tmain.delBtnClick(Sender: TObject);
var fSDID: integer;
begin
fSDID := StrToInt(InputBox('SD Card ID', 'Enter SD Card ID to delete: ', ''));
with dmSD do
begin
  if tblSD.Locate('ID', fSDID, []) = true then
  begin
    tblSD.Delete;
    showmessage('Record deleted!');
  end
  else
  begin
    showmessage('Record not found!');
  end;
end;

end;

procedure Tmain.insBtnClick(Sender: TObject);
var insManufacture, insSeller : string;
    insSizeGB : integer;
    insPrice : double;
begin
insManufacture := InputBox('SD Card Manufacturer', 'Enter a new SD Card manufacturer: ', '');
insSeller := InputBox('SD Card Seller', 'Enter a new SD Card seller: ', '');
insSizeGB := StrToInt(InputBox('SD Card Size', 'Enter a new SD Card size: ', ''));
insPrice := StrToFloat(InputBox('SD Card Price', 'Enter a new SD Card price: ', ''));

dmSD.tblSD.Insert;
dmSD.tblSD['manufacture'] := insManufacture;
dmSD.tblSD['seller'] := insSeller;
dmSD.tblSD['size_gb'] := insSizeGB;
dmSD.tblSD['price'] := insPrice;
dmSD.tblSD.Post;
showmessage('New record created!');
end;

procedure Tmain.pp_gb_btnClick(Sender: TObject);
var pp_gb_result : double;
begin

with dmSD do
begin
  tblSD.First;
  while not tblSD.eof do
  begin
    pp_gb_result := tblSD['price']/tblSD['size_gb'];
    tblSD.Edit;
    tblSD['pp_gb'] := pp_gb_result;
    tblSD.Next;
  end;
  showmessage('Price per GB calculated!');
end;

end;

procedure Tmain.sortBtnClick(Sender: TObject);
begin

dmSD.tblSD.Sort := 'pp_gb ASC';
end;

procedure Tmain.updBtnClick(Sender: TObject);
var fSDID, updSizeGB : integer;
    updManufacture, updSeller : string;
    updPrice : double;
begin

fSDID := StrToInt(InputBox('SD Card ID', 'Enter SD Card ID to edit: ', ''));

with dmSD do
begin
  if tblSD.Locate('ID', fSDID, []) = true then
  begin
    updManufacture := InputBox('SD Card Manufacturer', 'Enter a new SD Card manufacturer: ', tblSD['manufacture']);
    updSeller := InputBox('SD Card Seller', 'Enter a new SD Card seller: ', tblSD['seller']);
    updSizeGB := StrToInt(InputBox('SD Card Size', 'Enter a new SD Card size: ', tblSD['size_gb']));
    updPrice := StrToFloat(InputBox('SD Card Price', 'Enter a new SD Card price: ', tblSD['price']));

    tblSD.Edit;
    tblSD['manufacture'] := updManufacture;
    tblSD['seller'] := updSeller;
    tblSD['size_gb'] := updSizeGB;
    tblSD['price'] := updPrice;
    tblSD.Post;
  end
  else showmessage('Record not found!');


end;

end;

end.
