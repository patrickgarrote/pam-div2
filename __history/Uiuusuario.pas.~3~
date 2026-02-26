unit Uiuusuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  Tfrmiuusuario = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    edtusunome: TEdit;
    edtusulogin: TEdit;
    edtususenha: TEdit;
    Btngravar: TButton;
    procedure BtngravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USUID:INTEGER;
    USULOGADO:BOOLEAN;
  end;

var
  frmiuusuario: Tfrmiuusuario;

implementation

{$R *.fmx}

uses umodulo;

procedure Tfrmiuusuario.BtngravarClick(Sender: TObject);
begin
with dm.usuario do

begin

  close;
  sql.clear;
  sql.Add('insert into usuarios(usunome,usulogin,ususenha) values (:usunome,:usulogin,:ususenha);');

  parambyname('usunome').Value:=edtusunome.Text;
  parambyname('usulogin').Value:=edtusulogin.Text;
  parambyname('ususenha').Value:=edtususenha.Text;
end;

end;

end.
