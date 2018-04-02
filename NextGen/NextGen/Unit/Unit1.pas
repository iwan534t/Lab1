unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,URegister, UProductCatalog, USale;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
    Register: TRegister;
    catalog: TProductCatalog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  id := strtoint(Edit1.Text);
  qty := strtoint(Edit2.Text);
  Register.makeNewSale;
  Register.enterItem(id, qty);
  Edit1.Text := '0';
  Edit2.Text := '0';

end;




procedure TForm1.FormCreate(Sender: TObject);
begin
  catalog := TProductCatalog.create;
  Register := TRegister.create(catalog);
end;

end.
