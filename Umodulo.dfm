object dm: Tdm
  Height = 594
  Width = 895
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\etec\pam-div2\dblanchonete.db'
      'DriverID=SQLite')
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
    object usuariousuid: TFDAutoIncField
      FieldName = 'usuid'
      Origin = 'usuid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object usuariousunome: TWideMemoField
      FieldName = 'usunome'
      Origin = 'usunome'
      BlobType = ftWideMemo
    end
    object usuariousulogin: TWideMemoField
      FieldName = 'usulogin'
      Origin = 'usulogin'
      BlobType = ftWideMemo
    end
    object usuarioususenha: TWideMemoField
      FieldName = 'ususenha'
      Origin = 'ususenha'
      BlobType = ftWideMemo
    end
    object usuariousulogado: TBooleanField
      FieldName = 'usulogado'
      Origin = 'usulogado'
    end
  end
end
