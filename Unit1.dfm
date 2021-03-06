object Form1: TForm1
  Left = 298
  Top = 131
  Width = 722
  Height = 541
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Advanced Remote Soldat Server Enchanter'
  Color = clBtnFace
  Constraints.MinHeight = 424
  Constraints.MinWidth = 722
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnKeyDown = HotKeyDown
  OnKeyPress = HotKeyPress
  OnMouseUp = ServerTabMouseUp
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ServerTab: TTabControl
    Left = 20
    Top = 0
    Width = 589
    Height = 25
    Align = alCustom
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OwnerDraw = True
    ParentBiDiMode = False
    ParentFont = False
    PopupMenu = TabPopup
    TabOrder = 6
    TabStop = False
    OnChange = ServerTabChange
    OnChanging = ServerTabChanging
    OnDrawTab = ServerTabDrawTab
    OnEnter = ServerTabEnter
    OnMouseDown = ServerTabMouseDown
    OnMouseUp = ServerTabMouseUp
    object ServerName: TEdit
      Left = 128
      Top = 0
      Width = 89
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'ServerName'
      Visible = False
      OnExit = ServerNameExit
      OnKeyDown = HotKeyDown
      OnKeyPress = ServerNameKeyPress
    end
  end
  object AddServer: TButton
    Left = 672
    Top = 3
    Width = 33
    Height = 17
    Caption = 'Add'
    TabOrder = 0
    TabStop = False
    OnClick = AddServerClick
    OnKeyDown = HotKeyDown
    OnKeyPress = HotKeyPress
  end
  object RemoveServer: TButton
    Left = 616
    Top = 3
    Width = 51
    Height = 17
    Caption = 'Remove'
    TabOrder = 1
    TabStop = False
    OnClick = RemoveServerClick
    OnKeyDown = HotKeyDown
    OnKeyPress = HotKeyPress
  end
  object PageControl: TPageControl
    Left = 0
    Top = 20
    Width = 713
    Height = 500
    ActivePage = ServerConsole
    BiDiMode = bdLeftToRight
    MultiLine = True
    ParentBiDiMode = False
    TabOrder = 2
    TabPosition = tpLeft
    TabStop = False
    object ServerConsole: TTabSheet
      Caption = 'Soldat Server Console'
      OnEnter = SetFocusToCmd
      DesignSize = (
        686
        492)
      object Label1: TLabel
        Left = 0
        Top = 448
        Width = 69
        Height = 13
        Caption = 'Command line:'
      end
      object Label6: TLabel
        Left = 0
        Top = 36
        Width = 67
        Height = 13
        Caption = 'Average Ping:'
      end
      object AvgPing: TLabel
        Left = 72
        Top = 36
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 152
        Top = 36
        Width = 103
        Height = 13
        Caption = 'Average/Total Score:'
      end
      object TotalScore: TLabel
        Left = 261
        Top = 36
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 360
        Top = 36
        Width = 109
        Height = 13
        Caption = 'Average/Total Deaths:'
      end
      object TotalDeaths: TLabel
        Left = 472
        Top = 36
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Cmd: TComboBox
        Left = 0
        Top = 461
        Width = 545
        Height = 21
        AutoComplete = False
        Enabled = False
        ItemHeight = 13
        TabOrder = 9
        OnChange = CmdChange
        OnEnter = CmdEnter
        OnKeyDown = CmdKeyDown
        OnKeyPress = CmdKeyPress
      end
      object PlayerList: TListView
        Left = 0
        Top = 51
        Width = 545
        Height = 177
        Columns = <
          item
            Caption = '#'
            MinWidth = 20
            Width = 20
          end
          item
            Caption = 'Player Name'
            MinWidth = 160
            Tag = 1
            Width = 160
          end
          item
            Caption = 'Hardware ID'
            MinWidth = 102
            Tag = 2
            Width = 102
          end
          item
            Caption = 'Score'
            MinWidth = 40
            Tag = 3
            Width = 40
          end
          item
            Caption = 'Caps'
            MinWidth = 40
            Tag = 4
            Width = 40
          end
          item
            Caption = 'Deaths'
            MinWidth = 46
            Tag = 5
            Width = 46
          end
          item
            Caption = 'Ratio'
            MinWidth = 38
            Tag = 6
            Width = 38
          end
          item
            Caption = 'Ping'
            MinWidth = 35
            Tag = 7
            Width = 35
          end
          item
            Caption = 'Team'
            MinWidth = 58
            Tag = 8
            Width = 58
          end
          item
            Caption = 'IP'
            MinWidth = 93
            Tag = 9
            Width = 93
          end>
        Constraints.MinHeight = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatScrollBars = True
        FullDrag = True
        GridLines = True
        HideSelection = False
        IconOptions.Arrangement = iaLeft
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PlayerPopup
        ShowHint = True
        TabOrder = 2
        ViewStyle = vsReport
        OnColumnClick = PlayerListColumnClick
        OnCompare = PlayerListCompare
        OnCustomDrawItem = PlayerListCustomDrawItem
        OnCustomDrawSubItem = PlayerListCustomDrawSubItem
        OnInfoTip = PlayerListInfoTip
        OnKeyDown = HotKeyDown
        OnKeyPress = HotKeyPress
        OnMouseDown = PlayerListMouseDown
        OnMouseMove = Panel1MouseMove
        OnMouseUp = Panel1MouseUp
      end
      object Memo: TRichEdit
        Left = 0
        Top = 232
        Width = 545
        Height = 217
        TabStop = False
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        HideScrollBars = False
        ImeMode = imDisable
        Constraints.MinHeight = 84
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 6
        Visible = False
        OnChange = MemoChange
        OnKeyDown = HotKeyDown
        OnKeyPress = HotKeyPress
        OnMouseDown = MemoMouseDown
        OnMouseUp = MemoMouseUp
      end
      object Panel1: TPanel
        Left = 0
        Top = 225
        Width = 544
        Height = 3
        Cursor = crSizeNS
        TabOrder = 3
        OnMouseDown = Panel1MouseDown
        OnMouseMove = Panel1MouseMove
        OnMouseUp = Panel1MouseUp
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = -2
        Width = 686
        Height = 35
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 13
          Width = 25
          Height = 13
          Caption = 'Host:'
        end
        object Label4: TLabel
          Left = 152
          Top = 13
          Width = 22
          Height = 13
          Caption = 'Port:'
        end
        object Label2: TLabel
          Left = 224
          Top = 13
          Width = 49
          Height = 13
          Caption = 'Password:'
        end
        object SpeedButton: TSpeedButton
          Left = 410
          Top = 9
          Width = 10
          Height = 21
          BiDiMode = bdLeftToRight
          Caption = #187
          Layout = blGlyphTop
          Margin = 0
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = SpeedButtonClick
        end
        object Port: TEdit
          Left = 176
          Top = 9
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '23073'
          OnChange = PortChange
          OnKeyDown = HotKeyDown
          OnKeyPress = ConnectIt
        end
        object Pass: TEdit
          Left = 280
          Top = 9
          Width = 65
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
          OnChange = PassChange
          OnExit = PassExit
          OnKeyDown = PassKeyDown
          OnKeyPress = ConnectIt
          OnKeyUp = PassKeyDown
        end
        object Host: TComboBox
          Left = 40
          Top = 9
          Width = 105
          Height = 21
          AutoComplete = False
          ItemHeight = 13
          TabOrder = 0
          Text = '127.0.0.1'
          OnChange = HostChange
          OnKeyDown = HotKeyDown
          OnKeyPress = ConnectIt
          OnSelect = HostSelect
        end
        object AddFavServ: TButton
          Left = 423
          Top = 9
          Width = 105
          Height = 21
          Caption = 'Manage Favourites'
          PopupMenu = FavoritesPopup
          TabOrder = 4
          TabStop = False
          OnClick = SetFocusToCmd
          OnKeyDown = HotKeyDown
          OnKeyPress = HotKeyPress
          OnMouseDown = AddFavServMouseDown
        end
        object Refresh: TBitBtn
          Left = 610
          Top = 9
          Width = 21
          Height = 21
          Enabled = False
          TabOrder = 6
          TabStop = False
          OnClick = RefreshClick
          OnKeyDown = HotKeyDown
          OnKeyPress = HotKeyPress
          Kind = bkRetry
          Layout = blGlyphBottom
          Margin = 1
        end
        object Settings: TButton
          Left = 531
          Top = 9
          Width = 76
          Height = 21
          Caption = 'Configuration'
          ModalResult = 8
          TabOrder = 5
          TabStop = False
          OnClick = SettingsClick
          OnKeyDown = HotKeyDown
          OnKeyPress = HotKeyPress
        end
        object Connect: TButton
          Left = 347
          Top = 9
          Width = 63
          Height = 21
          Caption = 'Connect'
          TabOrder = 3
          TabStop = False
          OnClick = ConnectClick
          OnKeyDown = HotKeyDown
          OnKeyPress = HotKeyPress
          OnMouseDown = ConnectMouseDown
        end
      end
      object Action: TGroupBox
        Left = 549
        Top = 256
        Width = 136
        Height = 228
        Caption = 'Command Box'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        object PerformAction: TButton
          Left = 8
          Top = 237
          Width = 121
          Height = 20
          Hint = 'Who the hell uses this button anyways?'
          Caption = 'Perform Command'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = PerformActionClick
          OnKeyDown = HotKeyDown
          OnKeyPress = HotKeyPress
        end
      end
      object InfoBox: TGroupBox
        Left = 549
        Top = 145
        Width = 136
        Height = 111
        TabOrder = 5
        object GameMode: TLabel
          Left = 40
          Top = 26
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TimeLeft: TLabel
          Left = 58
          Top = 74
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Limit: TLabel
          Left = 68
          Top = 42
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object MapName: TLabel
          Left = 38
          Top = 10
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Time: TLabel
          Left = 58
          Top = 58
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TimeLabel: TLabel
          Left = 6
          Top = 58
          Width = 46
          Height = 13
          Caption = 'Time limit:'
        end
        object MapNameLabel: TLabel
          Left = 6
          Top = 10
          Width = 24
          Height = 13
          Caption = 'Map:'
        end
        object TimeLeftLabel: TLabel
          Left = 6
          Top = 74
          Width = 43
          Height = 13
          Caption = 'Time left:'
        end
        object LimitLabel: TLabel
          Left = 6
          Top = 42
          Width = 55
          Height = 13
          Caption = 'Score Limit:'
        end
        object GameModeLabel: TLabel
          Left = 6
          Top = 26
          Width = 30
          Height = 13
          Caption = 'Mode:'
        end
        object PlayerCountLabel: TLabel
          Left = 6
          Top = 90
          Width = 37
          Height = 13
          Caption = 'Players:'
        end
        object PlayerCount: TLabel
          Left = 53
          Top = 90
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object MoreInfo: TLabel
          Left = 104
          Top = 96
          Width = 29
          Height = 13
          Cursor = crHandPoint
          Caption = 'more..'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = MoreInfoClick
          OnMouseEnter = MoreInfoMouseEnter
          OnMouseLeave = MoreInfoMouseLeave
        end
        object botsCountLabel: TLabel
          Left = 6
          Top = 114
          Width = 24
          Height = 13
          Caption = 'Bots:'
        end
        object botsCount: TLabel
          Left = 38
          Top = 114
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpectCountLabel: TLabel
          Left = 6
          Top = 130
          Width = 54
          Height = 13
          Caption = 'Spectators:'
        end
        object SpectCount: TLabel
          Left = 70
          Top = 130
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RespawnLabel: TLabel
          Left = 6
          Top = 154
          Width = 70
          Height = 13
          Caption = 'Respawn time:'
        end
        object Respawn: TLabel
          Left = 81
          Top = 154
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object FFLabel: TLabel
          Left = 6
          Top = 170
          Width = 59
          Height = 13
          Caption = 'Friendly Fire:'
        end
        object FF: TLabel
          Left = 70
          Top = 170
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BonusLabel: TLabel
          Left = 6
          Top = 186
          Width = 83
          Height = 13
          Caption = 'Bonus frequency:'
        end
        object Bonus: TLabel
          Left = 94
          Top = 186
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object VotingLabel: TLabel
          Left = 6
          Top = 202
          Width = 72
          Height = 13
          Caption = 'Voting percent:'
        end
        object Voting: TLabel
          Left = 86
          Top = 202
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object TeamList: TListView
        Left = 549
        Top = 35
        Width = 135
        Height = 110
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = <
          item
            Caption = 'Team'
            MaxWidth = 43
            MinWidth = 43
            Width = 43
          end
          item
            Caption = 'Score'
            MaxWidth = 42
            MinWidth = 42
            Width = 42
          end
          item
            Caption = 'Players'
            MaxWidth = 50
            MinWidth = 50
          end>
        ColumnClick = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatScrollBars = True
        FullDrag = True
        Items.Data = {
          C90000000600000000000000FFFFFFFFFFFFFFFF020000000000000005416C70
          6861000000000000FFFFFFFFFFFFFFFF020000000000000005427261766F0000
          00000000FFFFFFFFFFFFFFFF020000000000000007436861726C696500000000
          0000FFFFFFFFFFFFFFFF02000000000000000544656C7461000000000000FFFF
          FFFFFFFFFFFF02000000000000000453706563000000000000FFFFFFFFFFFFFF
          FF020000000000000005546F74616C0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF}
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 4
        TabStop = False
        ViewStyle = vsReport
        OnClick = SetFocusToCmd
        OnCustomDrawItem = TeamListCustomDrawItem
        OnCustomDrawSubItem = TeamListCustomDrawSubItem
        OnKeyDown = HotKeyDown
        OnKeyPress = HotKeyPress
      end
      object ClearConsole: TButton
        Left = 634
        Top = 7
        Width = 21
        Height = 21
        Cursor = crArrow
        HelpType = htKeyword
        HelpKeyword = 'Disable autoscorll'
        Caption = 'cls'
        TabOrder = 1
        TabStop = False
        Visible = False
        OnClick = ClearConsoleClick
      end
      object SayBox: TCheckBox
        Left = 472
        Top = 447
        Width = 71
        Height = 14
        TabStop = False
        Anchors = [akRight, akBottom]
        Caption = 'Chat mode'
        Enabled = False
        TabOrder = 8
        OnClick = SayBoxClick
      end
      object AdminBox: TCheckBox
        Left = 256
        Top = 447
        Width = 105
        Height = 14
        TabStop = False
        Anchors = [akRight, akBottom]
        Caption = 'Admin Chat mode'
        Enabled = False
        TabOrder = 7
        OnClick = AdminBoxClick
      end
      object ActionList: TListBox
        Left = 560
        Top = 272
        Width = 121
        Height = 209
        Hint = 'command box'
        Style = lbOwnerDrawFixed
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Make Private'
          'Send server message'
          'Shutdown server'
          'Add bot'
          'Kick last player'
          'Ban IP'
          'Unban IP'
          'Ban Name'
          'Unban Name'
          'Ban last player'
          'Unban last player'
          'Change map'
          'Load next map'
          'Restart Match'
          'Add remote admin'
          'Remove remote admin'
          'Set respawn time'
          'Set max respawn time'
          'Set time limit'
          'Set kill/point/cap limit'
          'Set game password'
          'Set friendly fire'
          'Set vote percentage'
          'Set bonus frequency'
          'Set maximum players'
          'Change Game Mode'
          'Set Advance Mode'
          'Set Realistic Mode'
          'Set Survival Mode'
          'Load Settings File'
          'Load Weapons Mod'
          'Load Maplist File'
          'Register in Lobby')
        ParentFont = False
        PopupMenu = CommandPopup
        TabOrder = 10
        OnDblClick = PerformActionClick
        OnDrawItem = ActionListDrawItem
        OnKeyDown = HotKeyDown
        OnKeyPress = HotKeyPress
        OnMouseDown = ActionListMouseDown
      end
      object NickSayBox: TCheckBox
        Left = 368
        Top = 447
        Width = 97
        Height = 14
        TabStop = False
        Anchors = [akRight, akBottom]
        Caption = 'Nick Chat mode'
        Enabled = False
        TabOrder = 12
        OnClick = NickSayBoxClick
      end
    end
    object BotConsole: TTabSheet
      Caption = 'IRC Bot Console'
      ImageIndex = 1
      DesignSize = (
        686
        492)
      object Label10: TLabel
        Left = 0
        Top = 448
        Width = 69
        Height = 13
        Caption = 'Command line:'
      end
      object Label18: TLabel
        Left = 0
        Top = 36
        Width = 62
        Height = 13
        Caption = 'IRC Console:'
      end
      object IRCConsole: TRichEdit
        Left = 0
        Top = 51
        Width = 545
        Height = 398
        TabStop = False
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = IRCConsoleChange
        OnKeyDown = IRCConsoleKeyDown
        OnMouseDown = IRCConsoleMouseDown
        OnMouseUp = IRCConsoleMouseUp
      end
      object IRCCmd: TComboBox
        Left = 0
        Top = 461
        Width = 545
        Height = 21
        AutoComplete = False
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
        TabStop = False
        OnKeyDown = HotKeyDown
        OnKeyPress = IRCCmdKeyPress
      end
      object UserBox: TListBox
        Left = 546
        Top = 51
        Width = 131
        Height = 398
        ItemHeight = 13
        Sorted = True
        TabOrder = 2
        OnKeyDown = HotKeyDown
      end
      object IRCConnect: TButton
        Left = 3
        Top = 3
        Width = 83
        Height = 25
        Caption = 'Connect'
        TabOrder = 3
        OnClick = IRCConnectClick
        OnKeyDown = HotKeyDown
      end
      object IrcSettings: TBitBtn
        Left = 93
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Settings'
        ModalResult = 8
        TabOrder = 4
        OnClick = SettingsClick
        OnKeyDown = HotKeyDown
        OnKeyPress = HotKeyPress
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 20
    Top = 20
    Width = 689
    Height = 4
    BevelOuter = bvNone
    TabOrder = 3
    OnMouseMove = Panel2MouseMove
  end
  object Panel3: TPanel
    Left = 21
    Top = 516
    Width = 689
    Height = 4
    BevelOuter = bvNone
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 711
    Top = 20
    Width = 3
    Height = 493
    BevelOuter = bvNone
    TabOrder = 5
  end
  object Timer: TTimer
    Interval = 100
    OnTimer = TimerTimer
    Left = 32
    Top = 440
  end
  object PlayerPopup: TPopupMenu
    AutoPopup = False
    Left = 32
    Top = 408
    object Kick1: TMenuItem
      Caption = 'Kick'
      OnClick = Kick1Click
    end
    object Ban1: TMenuItem
      Caption = 'Ban'
      object Name1: TMenuItem
        Caption = 'Name'
        OnClick = Name1Click
      end
      object IP1: TMenuItem
        Caption = 'IP (Permanent)'
        OnClick = Ban1Click
      end
      object IP30days1: TMenuItem
        Caption = 'IP (30 days)'
        OnClick = IP30days1Click
      end
      object TimedIP1: TMenuItem
        Caption = 'Timed IP'
        OnClick = TimedIP1Click
      end
      object HWID1: TMenuItem
        Caption = 'Hardware ID'
        OnClick = HWID1Click
      end
    end
    object Admin1: TMenuItem
      Caption = 'Admin'
      object Add1: TMenuItem
        Caption = 'Add'
        OnClick = Admin1Click
      end
      object Remove1: TMenuItem
        Caption = 'Remove'
        OnClick = Remove1Click
      end
    end
    object Movetoteam1: TMenuItem
      Caption = 'Move to team ->'
      object MoveToAlpha1: TMenuItem
        Caption = 'Alpha'
        Visible = False
        OnClick = MoveToAlpha1Click
      end
      object MoveToBravo1: TMenuItem
        Caption = 'Bravo'
        Visible = False
        OnClick = MoveToBravo1Click
      end
      object MoveToCharlie1: TMenuItem
        Caption = 'Charlie'
        Visible = False
        OnClick = MoveToCharlie1Click
      end
      object MoveToDelta1: TMenuItem
        Caption = 'Delta'
        Visible = False
        OnClick = MoveToDelta1Click
      end
      object MoveToNone1: TMenuItem
        Caption = 'None'
        OnClick = MoveToNone1Click
      end
      object Spectator1: TMenuItem
        Caption = 'Spectator'
        OnClick = MoveToSpectator1Click
      end
    end
    object Kill1: TMenuItem
      Caption = 'Kill :)'
      OnClick = Kill1Click
    end
    object PrivateMessage1: TMenuItem
      Caption = 'Private Message'
      OnClick = PrivateMessage1Click
    end
    object GlobalMute1: TMenuItem
      Caption = 'Global Mute'
      object Mute1: TMenuItem
        Caption = 'Mute'
        OnClick = Mute1Click
      end
      object Unmute1: TMenuItem
        Caption = 'Unmute'
        OnClick = Unmute1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copytoclipboard1: TMenuItem
      Caption = 'Copy to Clipboard'
      object PlayerName1: TMenuItem
        Caption = 'Player'#39's Name'
        OnClick = PlayerName1Click
      end
      object PlayerIP1: TMenuItem
        Caption = 'Player'#39's IP'
        OnClick = PlayerIP1Click
      end
      object PlayerTagID1: TMenuItem
        Caption = 'Player'#39's Tag ID'
        OnClick = PlayerTagID1Click
      end
    end
  end
  object RefreshTimer: TTimer
    Interval = 5000
    OnTimer = RefreshTimerTimer
    Left = 64
    Top = 440
  end
  object TimerLeft: TTimer
    Enabled = False
    OnTimer = TimerLeftTimer
    Left = 96
    Top = 440
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 128
    Top = 408
    object Restore1: TMenuItem
      Caption = 'Restore'
      Default = True
      OnClick = Restore1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object AutoSay: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = AutoSayTimer
    Left = 160
    Top = 440
  end
  object IdEncoderUUE1: TIdEncoderUUE
    FillChar = '`'
    Left = 288
    Top = 408
  end
  object IdDecoderUUE1: TIdDecoderUUE
    FillChar = '~'
    Left = 256
    Top = 408
  end
  object SwapTimer: TTimer
    Enabled = False
    Interval = 5500
    OnTimer = SwapTimerTimer
    Left = 128
    Top = 440
  end
  object TabPopup: TPopupMenu
    Left = 64
    Top = 408
    object New1: TMenuItem
      Caption = 'New Tab'
      OnClick = AddServerClick
    end
    object Remove2: TMenuItem
      Caption = 'Close Tab'
      OnClick = RemoveServerClick
    end
    object Rename1: TMenuItem
      Caption = 'Rename Server'
      OnClick = Rename1Click
    end
    object DuplicateServer1: TMenuItem
      Caption = 'Duplicate Server'
      OnClick = DuplicateServer1Click
    end
  end
  object FavoritesPopup: TPopupMenu
    AutoPopup = False
    Left = 96
    Top = 408
    object AddServer1: TMenuItem
      Caption = 'Add Server'
      OnClick = AddFavServClick
    end
    object DeleteServer1: TMenuItem
      Caption = 'Remove Server'
      OnClick = DeleteServer1Click
    end
    object UpdateData1: TMenuItem
      Caption = 'Update Data'
      OnClick = UpdateData1Click
    end
  end
  object IRC: TIdIRC
    MaxLineAction = maException
    OnDisconnected = IRCDisconnected
    OnConnected = IRCConnected
    Nick = 'Nick'
    AltNick = 'OtherNick'
    Username = 'arsse'
    RealName = 'ARSSE Bot'
    Replies.Finger = 'ouch :S don'#39't PIITB'
    Replies.Version = 'ARSSE Bot Version 1.1b by ::RiA::KeFear'
    Replies.ClientInfo = 'ARSSE Server Commander Bot by ::RiA::KeFear'
    UserMode = []
    OnJoin = IRCJoin
    OnJoined = IRCJoined
    OnError = IRCError
    OnSystem = IRCSystem
    OnReceive = IRCReceive
    Left = 223
    Top = 408
  end
  object BalanceTimer: TTimer
    Enabled = False
    Interval = 5500
    OnTimer = BalanceTimerTimer
    Left = 191
    Top = 440
  end
  object ConnectPopup: TPopupMenu
    AutoPopup = False
    Left = 159
    Top = 408
    object ConnectAll1: TMenuItem
      Caption = 'Connect All'
      OnClick = ConnectAll1Click
    end
    object DisconnectAll1: TMenuItem
      Caption = 'Disconnect All'
      OnClick = DisconnectAll1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoRetry: TMenuItem
      Caption = 'Auto-reconnect'
      OnClick = AutoRetryClick
    end
    object AutoConnect: TMenuItem
      Caption = 'Connect on startup'
      OnClick = AutoConnectClick
    end
  end
  object CommandPopup: TPopupMenu
    AutoPopup = False
    Left = 191
    Top = 408
    object Perform1: TMenuItem
      Caption = 'Perform'
      Default = True
      OnClick = PerformActionClick
    end
    object Reloadlist1: TMenuItem
      Caption = 'Reload list'
      OnClick = Reloadlist1Click
    end
    object Edit: TMenuItem
      Caption = 'Edit'
      OnClick = EditClick
    end
    object Add2: TMenuItem
      Caption = 'Add'
      OnClick = Add2Click
    end
    object Remove3: TMenuItem
      Caption = 'Remove'
      OnClick = Remove3Click
    end
  end
  object AdminBubi: TzAPIBalloon
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 223
    Top = 440
  end
  object ApplicationEvents1: TApplicationEvents
    OnActivate = ApplicationEvents1Activate
    OnDeactivate = ApplicationEvents1Deactivate
    Left = 255
    Top = 440
  end
end
