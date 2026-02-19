object dm: Tdm
  Height = 594
  Width = 895
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\etec\pam-div2\dblanchonete.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 176
  end
  object usuario: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from usuarios;')
    Left = 376
    Top = 256
  end
end
