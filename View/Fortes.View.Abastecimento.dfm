inherited AbastecimentoForm: TAbastecimentoForm
  BorderIcons = [biSystemMenu]
  Caption = 'DFP-Abastecimento'
  ClientHeight = 425
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  object lblCombustivel: TLabel [0]
    Left = 16
    Top = 17
    Width = 87
    Height = 19
    Caption = 'Combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblQuantidade: TLabel [1]
    Left = 16
    Top = 84
    Width = 111
    Height = 19
    Caption = 'Quantidade(LT)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPreco: TLabel [2]
    Left = 16
    Top = 148
    Width = 70
    Height = 19
    Caption = 'Pre'#231'o(R$)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblIcms: TLabel [3]
    Left = 16
    Top = 215
    Width = 65
    Height = 19
    Caption = 'ICMS(%)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTotal: TLabel [4]
    Left = 752
    Top = 334
    Width = 41
    Height = 23
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtCombustivel: TEdit [5]
    Left = 59
    Top = 42
    Width = 214
    Height = 29
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dbgItens: TDBGrid [6]
    Left = 391
    Top = 42
    Width = 595
    Height = 277
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMBUSTIVEL'
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Nome'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade (LT)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Pre'#231'o (R$)'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total (R$)'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUAL_ICMS'
        Title.Caption = 'ICMS (%)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ICMS'
        Title.Caption = 'Valor ICMS  (R$)'
        Width = 72
        Visible = True
      end>
  end
  object edtCodigo: TEdit [7]
    Left = 16
    Top = 42
    Width = 39
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btnAdicionar: TButton [8]
    Left = 16
    Top = 289
    Width = 257
    Height = 37
    Caption = ' Adicionar ao Abastecimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnBuscar: TButton [9]
    Left = 279
    Top = 42
    Width = 106
    Height = 29
    Caption = 'Buscar Combust'#237'vel'
    TabOrder = 0
    OnClick = btnBuscarClick
  end
  inherited pnlFooter: TPanel
    Top = 383
    Width = 994
    TabOrder = 3
    ExplicitTop = 383
    ExplicitWidth = 994
    inherited btnSalvar: TButton
      Left = 919
      ExplicitLeft = 919
    end
  end
  object edtQuantidade: TDBEdit [11]
    Left = 16
    Top = 110
    Width = 257
    Height = 29
    AutoSize = False
    DataField = 'QUANTIDADE'
    DataSource = dsFields
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtPreco: TDBEdit [12]
    Left = 16
    Top = 173
    Width = 257
    Height = 29
    AutoSize = False
    DataField = 'VALOR'
    DataSource = dsFields
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edtIcms: TDBEdit [13]
    Left = 16
    Top = 240
    Width = 257
    Height = 29
    AutoSize = False
    DataField = 'PERCENTUAL_ICMS'
    DataSource = dsFields
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edtTotal: TDBEdit [14]
    Left = 811
    Top = 334
    Width = 174
    Height = 29
    AutoSize = False
    DataField = 'TOTAL'
    DataSource = dsFields
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object cdsFields: TClientDataSet
    PersistDataPacket.Data = {
      610000009619E0BD01000000180000000400000000000300000061000A515541
      4E54494441444508000400000000000556414C4F5208000400000000000F5045
      5243454E5455414C5F49434D53080004000000000005544F54414C0800040000
      0000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 352
    object cdsFieldsQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##0.00'
    end
    object cdsFieldsPRECO: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
    end
    object cdsFieldsICMS: TFloatField
      FieldName = 'PERCENTUAL_ICMS'
      DisplayFormat = '#,##0.00'
    end
    object cdsFieldsTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsFields: TDataSource
    DataSet = cdsFields
    Left = 176
    Top = 352
  end
end
