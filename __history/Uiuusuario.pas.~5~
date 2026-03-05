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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USUID:INTEGER;
    USULOGADO:BOOLEAN;
  end;

var
  frmiuusuario: Tfrmiuusuario;
  id:integer;
implementation

{$R *.fmx}

uses umodulo;

procedure Tfrmiuusuario.BtngravarClick(Sender: TObject);
begin
with dm.usuario do

begin

  close;
  sql.clear;
  if(id = 0)then
  begin
      sql.Add('insert into usuarios(usunome,usulogin,ususenha) values (:usunome,:usulogin,:ususenha);');
  end
  else
  begin
    sql.add('update usuarios set usunome=:usunome,usulogin=:usulogin,ususenha=:ususenha where usuid=:usuid');
    parambyname('usuid').value := id;
  end;


  parambyname('usunome').Value:=edtusunome.Text;
  parambyname('usulogin').Value:=edtusulogin.Text;
  parambyname('ususenha').Value:=edtususenha.Text;

  execSQL;

end;

end;

procedure Tfrmiuusuario.FormShow(Sender: TObject);
begin
id:= 1;
with dm.usuario do
begin
  close;
  sql.clear;
  sql.add('select * from usuarios where usuid = :id;');
  parambyname('id').value := id;
  open;
end;
        edtusunome.text:=dm.usuariousunome.AsString;
        edtusulogin.text:=dm.usuariousulogin.AsString;
        edtususenha.text:=dm.usuarioususenha.AsString;
end;

end.
