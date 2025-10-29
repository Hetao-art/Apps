object Form1: TForm1
  Left = 349
  Top = 116
  Caption = 'DelphiApiDemo'
  ClientHeight = 546
  ClientWidth = 1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 268
    Width = 84
    Height = 13
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = #36820#22238#32467#26524'            '
  end
  object Label2: TLabel
    Left = 243
    Top = 518
    Width = 11
    Height = 13
    Caption = 'url'
  end
  object Label3: TLabel
    Left = 480
    Top = 517
    Width = 29
    Height = 13
    Caption = 'userId'
  end
  object Label4: TLabel
    Left = 652
    Top = 517
    Width = 27
    Height = 13
    Caption = 'token'
  end
  object Button1: TButton
    Left = 8
    Top = 512
    Width = 41
    Height = 25
    Caption = #35843#29992
    TabOrder = 0
    OnClick = Button1Click
  end
  object MemoResult: TMemo
    Left = 0
    Top = 288
    Width = 1081
    Height = 217
    Align = alCustom
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ckMethod: TCheckBox
    Left = 56
    Top = 511
    Width = 72
    Height = 27
    Caption = #22797#26434#21152#23494
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 134
    Top = 504
    Width = 100
    Height = 36
    Caption = #35843#29992#26041#24335
    TabOrder = 3
    object rbJson: TRadioButton
      Left = 48
      Top = 14
      Width = 49
      Height = 17
      Caption = 'json'
      TabOrder = 0
      OnClick = rbJsonClick
    end
    object rbXml: TRadioButton
      Left = 6
      Top = 14
      Width = 43
      Height = 17
      Caption = 'xml'
      TabOrder = 1
      OnClick = rbXmlClick
    end
  end
  object edUrl: TEdit
    Left = 260
    Top = 516
    Width = 201
    Height = 21
    TabOrder = 4
  end
  object edUserId: TEdit
    Left = 520
    Top = 516
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edToken: TEdit
    Left = 696
    Top = 514
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1079
    Height = 265
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = #30149#26696#20449#24687#19978#20256'5001'
      object RichEdit5001: TRichEdit
        Left = 0
        Top = 0
        Width = 1071
        Height = 230
        Align = alTop
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          '{'
          #9'"Medical": {'
          #9#9'"SciCardNo":"123456",'
          #9#9' "SciCardIdentified":"4564646",'
          #9#9'"AdmissionNo": "",'
          #9#9'"HospitalId": "",'
          #9#9'"OutBedNum": "1",'
          #9#9'"AdmissionDate": "2016-05-19 19:05:08",'
          #9#9'"DischargeDate": "2016-05-20 19:05:08",'
          #9#9'"DoctorCode": "4",'
          #9#9'"DoctorName": "5",'
          #9#9'"IsDrugAllergy": "1",'
          #9#9'"AllergyDrugCode": "7",'
          #9#9'"AllergyDrugName": "8",'
          #9#9'"IsPathologicalExamination": "1",'
          #9#9'"PathologyCode": "10",'
          #9#9'"IsHospitalInfected": "1",'
          #9#9'"HospitalInfectedCode": "12",'
          #9#9'"BloodTypeS": "13",'
          #9#9'"BloodTypeE": "14",'
          #9#9'"LeaveHospitalType": "15",'
          #9#9'"ChiefComplaint": "16",'
          #9#9'"MedicalHistory": "17",'
          #9#9'"SurgeryHistory": "18",'
          #9#9'"BloodTransHistory": "19",'
          #9#9'"Marriage": "1",'
          #9#9'"Height": "120",'
          #9#9'"Weight": "40",'
          #9#9'"NewbornDate": "2016-05-19 19:05:08",'
          #9#9'"NewbornWeight": "6",'
          #9#9'"NewbornCurrentWeight": "14",'
          #9#9'"BearPregnancy": "0",'
          #9#9'"BearYie": "0",'
          #9#9'"AdmissionDiseaseId": "28",'
          #9#9'"AdmissionDiseaseName": "29",'
          #9#9'"DiagnosePosition1": "30",'
          #9#9'"DischargeDiseaseId": "31",'
          #9#9'"DischargeDiseaseName": "32",'
          #9#9'"DiagnosePosition2": "33",'
          #9#9'"Tsblbs": "34",'
          #9#9'"DiagnosisCode1": "35",'
          #9#9'"DiagnosisName1": "36",'
          #9#9'"DiagnosisCode2": "37",'
          #9#9'"DiagnosisName2": "38",'
          #9#9'"DiagnosisCode3": "39",'
          #9#9'"DiagnosisName3": "40",'
          #9#9'"DiagnosisCode4": "41",'
          #9#9'"DiagnosisName4": "42",'
          #9#9'"DiagnosisCode5": "43",'
          #9#9'"DiagnosisName5": "44",'
          #9#9'"DiagnosisCode6": "45",'
          #9#9'"DiagnosisName6": "46",'
          #9#9'"DiagnosisCode7": "47",'
          #9#9'"DiagnosisName7": "48",'
          #9#9'"DiagnosisCode8": "49",'
          #9#9'"DiagnosisName8": "50",'
          #9#9'"DiagnosisCode9": "51",'
          #9#9'"DiagnosisName9": "52",'
          #9#9'"DiagnosisCode10": "53",'
          #9#9'"DiagnosisName10": "54",'
          #9#9'"DiagnosisCode11": "55",'
          #9#9'"DiagnosisName11": "56",'
          #9#9'"DiagnosisCode12": "57",'
          #9#9'"DiagnosisName12": "58",'
          #9#9'"DiagnosisCode13": "59",'
          #9#9'"DiagnosisName13": "60",'
          #9#9'"DiagnosisCode14": "61",'
          #9#9'"DiagnosisName14": "62",'
          #9#9'"DiagnosisCode15": "63",'
          #9#9'"DiagnosisName15": "64",'
          #9#9'"DiagnosisCode16": "65",'
          #9#9'"DiagnosisName16": "66"'
          #9'},'
          #9'"ListCheck": [{'
          #9#9#9'"CheckId": "1",'
          #9#9#9'"DepartmentCode": "2",'
          #9#9#9'"DepartmentName": "3",'
          #9#9#9'"ApplyProjectCode": "4",'
          #9#9#9'"ApplyProjectName": "5",'
          #9#9#9'"ApplyDoctor": "6",'
          #9#9#9'"ApplyDoctorName": "7",'
          #9#9#9'"ApplyDatetime": "2016-05-19 19:05:08",'
          #9#9#9'"ReportDatetime": "2016-05-19 19:05:08",'
          #9#9#9'"CheckPositionCode": "10",'
          #9#9#9'"Abnormal": "10",'
          #9#9#9'"CheckResult": "12"'
          #9#9'}'
          #9'],'
          #9'"ListOperation": [{'
          #9#9#9'"OperationRecordNo": "1",'
          #9#9#9'"OperationDoctorCode": "2",'
          #9#9#9'"OperationDoctorName": "3",'
          #9#9#9'"FirstOperdoctorcode": "4",'
          #9#9#9'"FirstOperdoctorname": "5",'
          #9#9#9'"SecondOperdoctorcode": "6",'
          #9#9#9'"SecondOperdoctorname": "7",'
          #9#9#9'"AnesthesiologistCode": "1",'
          #9#9#9'"AnesthesiologistName": "9",'
          #9#9#9'"OperationDate": "2016-05-19 19:05:08",'
          #9#9#9'"OperationFinishDate": "2016-05-19 19:05:08",'
          #9#9#9'"AnaesthesiaType": "1",'
          #9#9#9'"IsComplication": "1",'
          #9#9#9'"ComplicationCode": "00.51001",'
          #9#9#9'"ComplicationName": "'#21452#24515#23460#36215#25615#20276#24515#20869#38500#39076#22120#32622#20837#26415'",'
          #9#9#9'"OperationRecord": "16",'
          #9#9#9'"RecordDoctorCode": "17",'
          #9#9#9'"RecordDoctorName": "18",'
          #9#9#9'"ListOperationDetail": [{'
          #9#9#9#9#9'"OperationRecordNo": "1",'
          #9#9#9#9#9'"OperationNo": "2",'
          #9#9#9#9#9'"OperationCode": "00.51001",'
          #9#9#9#9#9'"OperationName": "'#21452#24515#23460#36215#25615#20276#24515#20869#38500#39076#22120#32622#20837#26415'",'
          #9#9#9#9#9'"OperationLevel": "4",'
          #9#9#9#9#9'"OperationIncisionClass": "6",'
          #9#9#9#9#9'"OperationHealClass": "3",'
          #9#9#9#9#9'"IsMajorIden": "1",'
          #9#9#9#9#9'"IsIatrogenic": "1"'
          #9#9#9#9'}'
          #9#9#9']'
          #9#9'}'
          #9'],'
          #9'"LeaveHospital": {'
          #9#9'"DischargeOutcome": "1",'
          #9#9'"HospitalizationSituation": "2",'
          #9#9'"DtProcess": "3",'
          #9#9'"LeaveHospitalStatus": "4",'
          #9#9'"LeaveDoctorAdvice": "5"'
          #9'}'
          '}')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = #30149#26696#20449#24687#26597#35810'5002'
      ImageIndex = 1
      object RichEdit5002: TRichEdit
        Left = 0
        Top = 0
        Width = 1071
        Height = 230
        Align = alTop
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          '{'#39'AdmissionNo'#39':'#39'1104'#39','#39'HospitalId'#39':'#39'1104'#39'}')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = #30149#26696#20449#24687#20316#24223'5003'
      ImageIndex = 2
      object RichEdit5003: TRichEdit
        Left = 0
        Top = 0
        Width = 1071
        Height = 230
        Align = alTop
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          '{'#39'AdmissionNo'#39':'#39'1104'#39','#39'HospitalId'#39':'#39'1104'#39'}')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 928
    Top = 512
  end
end
