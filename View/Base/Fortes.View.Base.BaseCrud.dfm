object BaseCrudForm: TBaseCrudForm
  Left = 0
  Top = 0
  Caption = 'BaseCrudForm'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFooter: TPanel
    Left = 0
    Top = 159
    Width = 447
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnSalvar: TButton
      Left = 372
      Top = 0
      Width = 75
      Height = 42
      Align = alRight
      Caption = 'Salvar'
      Constraints.MaxWidth = 75
      Constraints.MinWidth = 75
      TabOrder = 0
      OnClick = btnSalvarClick
    end
  end
  object tbDefault: TFDQuery
    Left = 200
    Top = 8
  end
  object dsDefault: TDataSource
    AutoEdit = False
    DataSet = tbDefault
    Left = 264
    Top = 8
  end
  object dspDefault: TDataSetProvider
    DataSet = tbDefault
    Left = 320
    Top = 8
  end
  object cdsDefault: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDefault'
    Left = 376
    Top = 8
  end
end
