unit Ulistausuarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  Tfrmlistausuarios = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ListView1: TListView;
    Button1: TButton;
    Button2: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlistausuarios: Tfrmlistausuarios;

implementation

{$R *.fmx}
uses umodulo, uiuusuario;
procedure Tfrmlistausuarios.Button2Click(Sender: TObject);
begin
  frmiuusuario.id := 0;
  frmiuusuario.show;
end;

procedure Tfrmlistausuarios.FormShow(Sender: TObject);
begin
  with dm.usuario do
  begin
    close;
    sql.Clear;
    sql.Add('select * from usuarios;');
    open;
  end;
end;

end.
