object Throttle: TThrottle
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'PSRY Throttle'
  ClientHeight = 293
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Controls: TPanel
    Left = 0
    Top = 0
    Width = 207
    Height = 293
    Align = alClient
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    Visible = False
    object btnStop: TSpeedButton
      Left = 44
      Top = 152
      Width = 65
      Height = 30
      Caption = 'STOP'
      OnClick = btnStopClick
    end
    object Signal: TImage
      Left = 16
      Top = 5
      Width = 20
      Height = 100
      Picture.Data = {
        07544269746D6170A6170000424DA61700000000000036000000280000001400
        0000640000000100180000000000701700000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000241CED241CED241CED241CED241CED241C
        ED00000000000000000000000000000000000000000000000000000000000000
        0000000000241CED241CED241CED241CED241CED241CED241CED241CED241CED
        241CED000000000000000000000000000000000000000000000000000000241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED000000000000000000000000000000000000000000241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED000000
        000000000000000000000000241CED241CED241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED00000000
        0000000000000000241CED241CED241CED241CED241CED241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED0000000000000000
        00000000241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED000000000000000000000000
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED000000000000000000000000241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
        241CED241CED241CED241CED000000000000000000000000241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED241CED241CED000000000000000000000000000000241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED000000
        000000000000000000000000000000000000241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED00000000000000000000
        0000000000000000000000000000000000241CED241CED241CED241CED241CED
        241CED241CED241CED241CED241CED0000000000000000000000000000000000
        00000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000007F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000
        00000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000000000000000
        00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
        007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00
        0000000000000000000000000000000000000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F00000000000000000000000000000000000000000000000000000000000000
        00000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F0000000000000000000000000000000000000000000000000000007F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000
        00000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000000000
        000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000007F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000
        00000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000000000000000
        00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
        007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00
        0000000000000000000000000000000000000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F00000000000000000000000000000000000000000000000000000000000000
        00000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F0000000000000000000000000000000000000000000000000000007F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000
        00000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000000000
        000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000}
      Stretch = True
      OnClick = SignalClick
    end
    object Forward: TSpeedButton
      Left = 8
      Top = 124
      Width = 57
      Height = 22
      GroupIndex = 1
      Down = True
      Caption = 'Forward'
      OnClick = ForwardClick
    end
    object Label1: TLabel
      Left = 50
      Top = 37
      Width = 24
      Height = 13
      Caption = 'Train'
    end
    object Label2: TLabel
      Left = 52
      Top = 10
      Width = 22
      Height = 13
      Caption = 'Loco'
    end
    object Label3: TLabel
      Left = 50
      Top = 62
      Width = 24
      Height = 13
      Caption = 'Block'
    end
    object Label4: TLabel
      Left = 44
      Top = 89
      Width = 30
      Height = 13
      Caption = 'Speed'
    end
    object Reverse: TSpeedButton
      Left = 84
      Top = 124
      Width = 67
      Height = 22
      GroupIndex = 1
      Caption = 'Reverse'
      OnClick = ReverseClick
    end
    object SigSpeed: TLabel
      Left = 15
      Top = 106
      Width = 7
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AddressInUse: TLabel
      Left = 58
      Top = 264
      Width = 67
      Height = 13
      Caption = 'AddressInUse'
    end
    object Loco: TEdit
      Left = 85
      Top = 10
      Width = 57
      Height = 21
      Color = clWhite
      NumbersOnly = True
      TabOrder = 0
    end
    object Speed: TEdit
      Left = 85
      Top = 91
      Width = 57
      Height = 21
      TabOrder = 1
    end
    object Train: TEdit
      Left = 85
      Top = 37
      Width = 57
      Height = 21
      TabOrder = 2
    end
    object Block: TEdit
      Left = 85
      Top = 64
      Width = 57
      Height = 21
      TabOrder = 3
    end
    object Horn: TButton
      Left = 8
      Top = 188
      Width = 41
      Height = 22
      Caption = 'Horn'
      TabOrder = 4
      OnMouseDown = HornMouseDown
      OnMouseUp = HornMouseUp
    end
    object Headlight: TButton
      Left = 105
      Top = 188
      Width = 46
      Height = 22
      Caption = 'Light'
      TabOrder = 5
      OnMouseDown = HeadlightMouseDown
    end
    object TrackBar: TTrackBar
      Left = 157
      Top = 0
      Width = 44
      Height = 250
      BorderWidth = 2
      LineSize = 5
      Max = 126
      Orientation = trVertical
      Frequency = 5
      Position = 126
      TabOrder = 6
      TickMarks = tmBoth
      OnChange = TrackBarChange
    end
    object Release: TButton
      Left = 44
      Top = 220
      Width = 65
      Height = 22
      Caption = 'Release'
      TabOrder = 7
      OnClick = ReleaseClick
    end
    object Bell: TButton
      Left = 55
      Top = 188
      Width = 44
      Height = 22
      Caption = 'Bell'
      TabOrder = 8
      OnMouseDown = BellMouseDown
    end
  end
  object SignUp: TPanel
    Left = 42
    Top = 48
    Width = 109
    Height = 140
    Color = clCream
    ParentBackground = False
    TabOrder = 1
    object Label7: TLabel
      Left = 38
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Connect: TButton
      Left = 24
      Top = 90
      Width = 61
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = ConnectClick
    end
    object IPAddress: TMemo
      Left = 10
      Top = 18
      Width = 86
      Height = 19
      Lines.Strings = (
        '')
      TabOrder = 1
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object Name: TMemo
      Left = 10
      Top = 50
      Width = 87
      Height = 20
      CharCase = ecUpperCase
      Lines.Strings = (
        ''
        '')
      MaxLength = 10
      TabOrder = 2
    end
  end
  object SelectLoco: TPanel
    Left = 42
    Top = 64
    Width = 109
    Height = 110
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label6: TLabel
      Left = 24
      Top = 1
      Width = 62
      Height = 13
      Caption = 'Loco Number'
    end
    object NotAvailable: TLabel
      Left = 24
      Top = 88
      Width = 63
      Height = 13
      Caption = 'Not Available'
      Visible = False
    end
    object Engine: TEdit
      Left = 27
      Top = 20
      Width = 54
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object ConnectLoco: TButton
      Left = 29
      Top = 57
      Width = 54
      Height = 25
      Caption = 'Connect'
      TabOrder = 1
      OnClick = ConnectLocoClick
    end
  end
  object ClientSocket: TClientSocket
    Active = False
    Address = '192.168.0.23'
    ClientType = ctNonBlocking
    Port = 5404
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    Left = 8
    Top = 136
  end
  object CabSignals: TImageList
    BkColor = clWhite
    Height = 100
    Width = 20
    Left = 8
    Top = 216
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 120
    Top = 224
  end
end
