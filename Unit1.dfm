object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblNumeroInicial: TcxLabel
    Left = 40
    Top = 40
    Caption = 'Primeiro N'#250'mero:'
  end
  object lblNumeroFinal: TcxLabel
    Left = 40
    Top = 81
    Caption = #218'ltimo n'#250'mero:'
  end
  object edNumeroInicial: TcxMaskEdit
    Left = 152
    Top = 39
    Hint = 'Digite o menor n'#250'mero poss'#237'vel no sorteio'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Width = 121
  end
  object edNumeroFinal: TcxMaskEdit
    Left = 152
    Top = 80
    Hint = 'Digite o maior n'#250'mero poss'#237'vel no sorteio'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Width = 121
  end
  object btSortear: TcxButton
    Left = 152
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Sortear'
    TabOrder = 4
    OnClick = btSortearClick
  end
  object lblSorteado: TcxLabel
    Left = 328
    Top = 84
    Visible = False
  end
end
