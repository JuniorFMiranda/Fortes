object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Posto DFP'
  ClientHeight = 254
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 456
    Top = 200
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object Abastecimento1: TMenuItem
        Caption = 'Abastecimento'
        OnClick = Abastecimento1Click
      end
    end
  end
end
