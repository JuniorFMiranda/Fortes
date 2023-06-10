inherited FindPesquisarCombustivelForm: TFindPesquisarCombustivelForm
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa de combust'#237'vel'
  ClientHeight = 331
  Position = poDesktopCenter
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFooter: TPanel
    Top = 289
    ExplicitTop = 287
  end
  inherited dbgPesquisa: TDBGrid
    Height = 153
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMBUSTIVEL'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Pre'#231'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUAL_ICMS'
        Title.Caption = 'ICMS'
        Width = 90
        Visible = True
      end>
  end
  inherited pnlSummary: TPanel
    inherited lblRecordCaption: TLabel
      ExplicitLeft = 199
    end
  end
  inherited qryFind: TFDQuery
    SQL.Strings = (
      'SELECT *  FROM COMBUSTIVEL ')
    Left = 368
    object qryFindID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      Required = True
    end
    object qryFindDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object qryFindVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryFindPERCENTUAL_ICMS: TCurrencyField
      FieldName = 'PERCENTUAL_ICMS'
      Origin = 'PERCENTUAL_ICMS'
      Required = True
      DisplayFormat = '#,##0.00%'
      currency = False
    end
  end
end
