object frmThreading: TfrmThreading
  Left = 0
  Top = 0
  ClientHeight = 506
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExecute: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Action = actExecuteParallel
    TabOrder = 0
  end
  object btnExecuteSequential: TButton
    Left = 167
    Top = 8
    Width = 153
    Height = 25
    Action = actExecuteSequential
    TabOrder = 1
  end
  object pnlLog: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 70
    Width = 707
    Height = 433
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 2
  end
  object edtIterations: TLabeledEdit
    Left = 400
    Top = 8
    Width = 57
    Height = 21
    Hint = 'Number of iterations in for loop.'
    Alignment = taCenter
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'Iterations:'
    LabelPosition = lpLeft
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '1000'
  end
  object edtStrides: TLabeledEdit
    Left = 504
    Top = 8
    Width = 57
    Height = 21
    Hint = 
      'The number of strides are the number of iterations executed per ' +
      'thread in a parallel for loop.'
    Alignment = taCenter
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Strides:'
    LabelPosition = lpLeft
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = '1'
  end
  object btnStartTask: TButton
    Left = 8
    Top = 39
    Width = 153
    Height = 25
    Action = actStartTask
    TabOrder = 5
  end
  object btnCancelTask: TButton
    Left = 167
    Top = 39
    Width = 153
    Height = 25
    Action = actCancelTask
    TabOrder = 6
  end
  object aclMain: TActionList
    Left = 304
    Top = 176
    object actExecuteParallel: TAction
      Caption = 'Execute parallel'
      OnExecute = actExecuteParallelExecute
    end
    object actExecuteSequential: TAction
      Caption = 'Execute sequential'
      OnExecute = actExecuteSequentialExecute
    end
    object actStartTask: TAction
      Caption = 'Start task'
      OnExecute = actStartTaskExecute
    end
    object actCancelTask: TAction
      Caption = 'Cancel task'
      OnExecute = actCancelTaskExecute
    end
  end
  object imlMain: TImageList
    ColorDepth = cd32Bit
    Left = 72
    Top = 136
    Bitmap = {
      494C010105000900040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003582CAFF347AC8FF3378C7FF3377
      C7FF3477C7FF3477C7FF3378C7FF3379C9FF3379C9FF3378C7FF3477C7FF3477
      C7FF3377C7FF3378C7FF347AC8FF3582CAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003686CDFF50E3FFFF50E3FFFF51E1
      FFFF51E1FFFF51E2FFFF51E5FFFF50E9FFFF50E9FFFF51E5FFFF51E2FFFF51E1
      FFFF51E1FFFF50E3FFFF50E3FFFF3686CDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008AB4DEFF75B8E4FF4DDBFFFF46D5
      FFFF48D5FFFF48D6FFFF46DCFFFF62443AFF62443AFF46DCFFFF48D6FFFF48D5
      FFFF46D5FFFF4DDBFFFF75B8E4FF8AB4DEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A82C9FFA3E0FAFF3BCF
      FFFF3FCEFFFF41CFFFFF3FD6FFFF72574BFF72574BFF3FD6FFFF41CFFFFF3FCE
      FFFF3BCFFFFFA3E0FAFF3A82C9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8DCEFFF5697D4FF9EE8
      FFFF33C7FFFF38C8FFFF38CFFFFF46BCE9FF46BCE9FF38CFFFFF38C8FFFF33C7
      FFFF9EE8FFFF5697D4FFC8DCEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000629ED5FF90BF
      E6FF6AD7FFFF2DC3FFFF2FCBFFFF5F463AFF5F463AFF2FCBFFFF2DC3FFFF6AD7
      FFFF90BFE6FF629ED5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003782
      C9FFC1E8FDFF4BCCFFFF22C5FFFF645047FF645047FF22C5FFFF4BCCFFFFC1E8
      FDFF3782C9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7D2
      EAFF5297D5FFC6F3FFFF35CAFFFF67564FFF67564FFF35CAFFFFC6F3FFFF5297
      D5FFB7D2EAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005394D0FF86BEEAFFA4ECFFFF67584EFF67584EFFA4ECFFFF86BEEAFF5394
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003583CBFFB2E5FFFF9EC8DEFF9EC8DEFFB2E5FFFF3583CBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7C7E6FF4E98D7FFC1F0FFFFC1F0FFFF4E98D7FFA7C7E6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005394D0FF84C3F1FF84C3F1FF5394D0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3EDF6FF2E84CDFF2E84CDFFE3EDF6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151514162E2B272F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000595959608E8E8EBF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8E8E8EBF5959
      5960000000000000000000000000000000000000000000000000000000000000
      0000D2D2D2FFA7A7A7FF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFFA7A7A7FFD2D2
      D2FF000000000000000000000000000000000000000000000000D8D8D8FFCCCC
      CCFFBDBDBDFF9C9C9CFF888888FF767676FF767676FF888888FF9C9C9CFFBDBD
      BDFFCCCCCCFFD7D7D7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000302C283182674889040303040000
      00000000000000000000000000000000000000000000000000001F1F1F209191
      91CF9A9A9AFFD4D4D4FFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1FFD4D4D4FF9A9A
      9AFF919191CF1F1F1F2000000000000000000000000000000000EFEFEFFFA0A0
      A0FF9A9A9AFFD4D4D4FFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1FFD4D4D4FF9A9A
      9AFFA0A0A0FFEFEFEFFF0000000000000000000000000000000000000000A7A7
      A7FF8E8B8BFFBBB0B0FFEBDADAFFEBDADAFFEBDADAFFEBDADAFFBBB0B0FF8E8B
      8BFFA7A7A7FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000463D3549E18517FF866B43920100
      000100000000000000000000000000000000000000001F1F1F20909090EFB7B7
      B7FFFFFFFFFFF6E8D9FFE3B98CFFD9A162FFD9A162FFE3B98CFFF6E8D9FFFFFF
      FFFFB7B7B7FF909090EF1F1F1F200000000000000000EFEFEFFF919191FFB7B7
      B7FFFFFFFFFFF6E8D9FFE3B98CFFD9A162FFD9A162FFE3B98CFFF6E8D9FFFFFF
      FFFFB7B7B7FF919191FFEFEFEFFF000000000000000000000000B0B0B0FFA5A1
      A1FFE4D6D6FFA197BDFF5852A3FF161488FF161488FF5852A3FFA197BDFFE3D6
      D6FFA5A1A1FFB0B0B0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F393343E08F1DFFE69517FF8568
      43910707070800000000000000000000000000000000919191CFB7B7B7FFFFFF
      FFFFE4BB8EFFCE8533FFD18D3FFFDAA465FFD18D3FFFCE8533FFCE8533FFE4BB
      8EFFFFFFFFFFB7B7B7FF919191CF0000000000000000A0A0A0FFB7B7B7FFFFFF
      FFFFE4BB8EFFCE8533FFDAA465FFDAA465FFDAA465FFDAA465FFCE8533FFE4BB
      8EFFFFFFFFFFB7B7B7FFA0A0A0FF0000000000000000C2C2C2FFA9A6A6FFDBD1
      D1FF4845A3FF0B0B94FF0C0CC5FF0C0CD4FF0C0CD4FF0C0CC5FF0B0B94FF4845
      A3FFDACFCFFFA8A5A5FFC2C2C2FF000000000000000000000000000000000000
      0000000000000000000000000000000000003A35303DDE8918FFE89614FFE18F
      18FF7560457E000000000000000000000000595959609A9A9AFFFFFFFFFFE5BD
      90FFD18937FFD18937FFE2B584FFFFFFFFFFE8C49CFFD18937FFD18937FFD189
      37FFE5BD90FFFFFFFFFF9A9A9AFF59595960D2D2D2FF9A9A9AFFFFFFFFFFE5BD
      90FFD18937FFD18937FFDFAE75FFFCF8F3FFFCF8F3FFDFAE75FFD18937FFD189
      37FFE5BD90FFFFFFFFFF9A9A9AFFD2D2D2FF00000000A2A2A2FFD4CECEFF4B49
      A9FF1111A2FFDCDCDCFF0C0CB6FF0C0CD0FF0C0CD0FF0C0CB6FFEEEEEEFF0F0F
      A2FF4B49A9FFD0C9C9FFA2A1A1FF00000000060606070B0B0B0C101010111414
      13151B1A191C1F1E1C2027252228272522285A4C4260DB871BFFE28F10FFE28E
      14FFDE8C1DFE6D5C447600000000000000008E8E8EBFD4D4D4FFF7EADBFFD38D
      3BFFD38D3BFFD38D3BFFD38D3BFFDEAA6BFFD59447FFD38D3BFFD38D3BFFD38D
      3BFFD38D3BFFF7EADBFFD4D4D4FF8E8E8EBFA7A7A7FFD4D4D4FFF7EADBFFD38D
      3BFFD38D3BFFD38D3BFFD38D3BFFF4E2CFFFF4E2CFFFD38D3BFFD38D3BFFD38D
      3BFFD38D3BFFF7EADBFFD4D4D4FFA7A7A7FFC5C5C5FFB7B5B5FF9592BAFF1D1D
      B0FFD1D1D1FFD6D6D6FFDCDCDCFF0C0CB0FF0C0CB0FFEAEAEAFFEEEEEEFFEEEE
      EEFF1515ABFF9491B8FFAFACACFFC5C5C5FF2D2B282F574E415C7F6B4E899378
      51A1AF884FC2B98D4ECECC9647E5E19D3BFFE08E39FDDD8417FFDD880EFFDD86
      10FFDE8813FFDB881BFE6E5B4377000000008C8C8CFFF1F1F1FFE7C195FFD590
      3FFFD5903FFFD5903FFFDDA562FFF4E3CFFFDFAB6EFFD5903FFFD5903FFFD590
      3FFFD5903FFFE7C195FFF1F1F1FF8C8C8CFF8C8C8CFFF1F1F1FFE7C195FFD590
      3FFFD5903FFFD5903FFFD5903FFFF4E3D0FFF4E3D0FFD5903FFFD5903FFFD590
      3FFFD5903FFFE7C195FFF1F1F1FF8C8C8CFFB2B2B2FFD0CFCFFF5959AEFF2525
      C1FF0C0CB8FFD1D1D1FFD6D6D6FFDCDCDCFFE2E2E2FFE6E6E6FFEAEAEAFF0C0C
      B8FF1212B5FF5959AEFFC3C1C1FFB2B2B2FF2C2A262E594D3E5F8267458F9671
      43A7AD7A3BC5B37D37CEC4802BE5D78218FFD78518FFD67A0EFFD67A0FFFD67B
      10FFD67A0EFFD67B11FFD47F19FC715C447B8C8C8CFFFFFFFFFFE1AE71FFD793
      43FFD79343FFD79343FFD79343FFFDF8F4FFFCF8F3FFE6BB8BFFD79343FFD793
      43FFD79343FFE1AE71FFFFFFFFFF8C8C8CFF8C8C8CFFFFFFFFFFE1AE71FFD793
      43FFD79343FFD79343FFD79343FFF5E4D1FFF5E4D1FFD79343FFD79343FFD793
      43FFD79343FFE1AE71FFFFFFFFFF8C8C8CFFABABABFFCCCCCCFF2E2EA9FF3535
      C8FF0F0FAEFF0C0CACFFD1D1D1FFD6D6D6FFDCDCDCFFE2E2E2FF0C0CACFF0C0C
      ACFF1414B1FF2E2EA9FFC0C0C0FFABABABFF2C29252D564B3C5A7E6645879071
      419DAD7D37BFB87F31CECA8423E5DE870EFFDC840EFFDD8612FFDD8612FFDD87
      12FFDD8712FFDF870EFFE29219FFB37D38CE8C8C8CFFFFFFFFFFE3B174FFD997
      47FFD99747FFD99747FFD99747FFE0AA69FFFAF2E9FFFFFFFFFFEED1AFFFD997
      47FFD99747FFE3B174FFFFFFFFFF8C8C8CFF8C8C8CFFFFFFFFFFE3B174FFD997
      47FFD99747FFD99747FFE2B074FFFAF2E8FFF6E5D2FFD99747FFD99747FFD997
      47FFD99747FFE3B174FFFFFFFFFF8C8C8CFFADADADFFCFCFCFFF3131ADFF4545
      D2FF2929B8FF0E0EA0FFCECECEFFD1D1D1FFD6D6D6FFDCDCDCFF0C0C9FFF0C0C
      A2FF1A1AAEFF3131ADFFC3C3C3FFADADADFF302D2831605440638F744595A683
      41AEC08F38CAC49136CED99A29E5F1A315FFEFA011FFEC9D13FFEB9C16FFEB9C
      16FFEC9D13FFF2A81CFFB8863FCD201E1C218C8C8CFFF1F1F1FFEBC69BFFDB9A
      4BFFDB9A4BFFDB9A4BFFDB9A4BFFDB9A4BFFDDA056FFF6E6D3FFFFFFFFFFDB9A
      4BFFDB9A4BFFEBC69BFFF1F1F1FF8C8C8CFF8C8C8CFFF1F1F1FFEBC69BFFDB9A
      4BFFDB9A4BFFDB9A4BFFEBC69CFFF8ECDEFFF6E6D3FFDB9A4BFFDB9A4BFFDB9A
      4BFFDB9A4BFFEBC69BFFF1F1F1FF8C8C8CFFBABABAFFDBDCDCFF5E5FB6FF4949
      D5FF1E1EABFFFFFFFFFFF7F7F7FFE8E8E8FFDEDEDEFFDBDBDBFFDCDCDCFF0C0C
      9BFF2828B5FF5E5FB6FFCBCCCCFFBABABAFF1817161936322D38574C3E5C695A
      4571866C4893977547A7BC853AD5BD843AD4CB9649E1F5AE23FFF4A815FFF5AB
      16FFFDB91FFFBB8841CE12121113000000008E8E8EBFD4D4D4FFF9EDDEFFDD9D
      4EFFDD9D4EFFECC79DFFF2DABDFFE5B579FFE7BB87FFF9ECDEFFFFFFFFFFDD9D
      4EFFDD9D4EFFF9EDDEFFD4D4D4FF8E8E8EBFA7A7A7FFD4D4D4FFF9EDDEFFDD9D
      4EFFDD9D4EFFDD9D4EFFDD9D4EFFDD9D4EFFE1A964FFDD9D4EFFDD9D4EFFDD9D
      4EFFDD9D4EFFF9EDDEFFD4D4D4FFA7A7A7FFCECECEFFC8C8C8FF9A9BC4FF3E3E
      CAFFFFFFFFFFFFFFFFFFFFFFFFFF4040CDFF4040CDFFFFFFFFFFFFFFFFFFFFFF
      FFFF3737C3FF9899C3FFBDBDBDFFCECECEFF0000000000000000000000000000
      0000000000000000000000000000000000003F3A3341F7B21EFFFFBF19FFFFC9
      21FFBE8C41D0151414160000000000000000595959609A9A9AFFFFFFFFFFEDC9
      9FFFDFA051FFF5E2CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBC495FFDFA0
      51FFEDC99FFFFFFFFFFF9A9A9AFF59595960D2D2D2FF9A9A9AFFFFFFFFFFEDC9
      9FFFDFA051FFDFA051FFDFA051FFF3DBBFFFEFCFA9FFDFA051FFDFA051FFDFA0
      51FFEDC99FFFFFFFFFFF9A9A9AFFD2D2D2FF00000000B6B6B6FFDFE0E0FF5859
      BCFF4D4DDAFFFFFFFFFF5151DEFF5151DEFF5151DEFF5151DEFFFFFFFFFF4949
      D6FF5859BCFFD8D8D8FFB4B4B4FF000000000000000000000000000000000000
      000000000000000000000000000000000000403B3343F5B720FFFFD723FFB78A
      44CA1817161900000000000000000000000000000000919191CFB7B7B7FFFFFF
      FFFFEECBA0FFE1A355FFE6B474FFE8BA82FFE8BA82FFE4AE6AFFE1A355FFEECB
      A0FFFFFFFFFFB7B7B7FF919191CF0000000000000000A0A0A0FFB7B7B7FFFFFF
      FFFFEECBA0FFE1A355FFE1A355FFF6E3CBFFF0D1ACFFE1A355FFE1A355FFEECB
      A0FFFFFFFFFFB7B7B7FFA0A0A0FF0000000000000000D1D1D1FFBFBFBFFFDFDF
      DFFF5C5CC1FF4343D0FF5C5CE9FF6565F2FF6565F2FF5B5BE8FF4141CEFF5C5C
      C1FFDBDCDCFFBCBCBCFFD1D1D1FF000000000000000000000000000000000000
      0000000000000000000000000000000000003F3A3442F3C132FFBE9340D01212
      111300000000000000000000000000000000000000001F1F1F20909090EFB7B7
      B7FFFFFFFFFFFAEEE0FFEFCCA2FFE9BB83FFE9BB83FFEFCCA2FFFAEEE0FFFFFF
      FFFFB7B7B7FF909090EF1F1F1F200000000000000000EFEFEFFF919191FFB7B7
      B7FFFFFFFFFFFAEEE0FFEFCCA2FFE9BB83FFE9BB83FFEFCCA2FFFAEEE0FFFFFF
      FFFFB7B7B7FF919191FFEFEFEFFF000000000000000000000000CACACAFFC0C0
      C0FFE6E6E6FFA8A8D3FF6E6EC7FF3D3DBEFF3D3DBEFF6E6EC7FFA8A8D2FFE3E4
      E4FFBFBFBFFFCACACAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C454051BA814AD9161514170000
      00000000000000000000000000000000000000000000000000001F1F1F209191
      91CF9A9A9AFFD4D4D4FFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1FFD4D4D4FF9A9A
      9AFF919191CF1F1F1F2000000000000000000000000000000000EFEFEFFFA0A0
      A0FF9A9A9AFFD4D4D4FFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1FFD4D4D4FF9A9A
      9AFFA0A0A0FFEFEFEFFF0000000000000000000000000000000000000000D3D3
      D3FFBBBBBBFFD0D0D0FFEAEAEAFFE6E6E6FFE6E6E6FFEAEAEAFFCECECEFFBBBB
      BBFFD3D3D3FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000433E3A477D614E90000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000595959608E8E8EBF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8E8E8EBF5959
      5960000000000000000000000000000000000000000000000000000000000000
      0000D2D2D2FFA7A7A7FF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFFA7A7A7FFD2D2
      D2FF000000000000000000000000000000000000000000000000000000000000
      000000000000D4D4D4FFC4C4C4FFBBBBBBFFBBBBBBFFC4C4C4FFD4D4D4FF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF3FF00F00000000FF1FC00300000000
      FF0F800100000000FF07800100000000FF070000000000000003000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0001000000000000FF03000000000000FF07800100000000FF0F800100000000
      FF1FC00300000000FF3FF00F0000000000000000000000000000000000000000
      000000000000}
  end
end
