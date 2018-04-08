unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  URegister, UProductCatalog, USale,
  Unit2, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure actionPerformed(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Sale: TSale;
    /// <link>aggregation</link>
    Regicter: TRegister;
    catalog: TProductCatalog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.actionPerformed(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  // Registe.enterItem();
  id := strtoint(Edit1.Text);
  qty := strtoint(Edit2.Text);
  Regicter.makeNewSale;
  Regicter.enterItem(id, qty);

  Edit1.Text := '0';
  Edit2.Text := '0';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Visible := true;
  Form2.Edit1.Text := IntToStr(Regicter.getTotalSale);
  self.Visible := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.Text := '0';
  Edit2.Text := '0';

  catalog := TProductCatalog.create;
  Regicter := TRegister.create(catalog);
end;

end.
