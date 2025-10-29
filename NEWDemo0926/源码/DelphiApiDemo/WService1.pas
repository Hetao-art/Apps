// ************************************************************************ //
// 在文件中的类声明从 WSDL 文件中读取数据生成, 描述如下:
// WSDL     : http://localhost:8888/WService.asmx?wsdl
// 编码     : utf-8
// 版本     : 1.0
// (2016/7/4 15:33:29 - 1.33.2.5)
// ************************************************************************ //

unit WService1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // 下列类型, 提交至 WSDL 文件没有表现在文件中.
  // 它们是其他类型表示或归类的任何一个别名[@]
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // 指示错误的 WSDL 文件声明失败或或导入概要类.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"

  headerType           = class;                 { "http://www.jhlss.gov.cn/esb/TargetService" }
  recordsType          = class;                 { "http://www.jhlss.gov.cn/esb/TargetService" }
  bodyType             = class;                 { "http://www.jhlss.gov.cn/esb/TargetService" }



  // ************************************************************************ //
  // Namespace : http://www.jhlss.gov.cn/esb/TargetService
  // ************************************************************************ //
  headerType = class(TRemotable)
  private
    FcallerId: WideString;
    FuserId: WideString;
    FtransId: WideString;
    FreferenceId: WideString;
    FreferenceTime: WideString;
    FsignType: WideString;
    Freserve: WideString;
    FreturnCode: WideString;
    FerrorCode: WideString;
    FerrorMsg: WideString;
  published
    property callerId: WideString read FcallerId write FcallerId;
    property userId: WideString read FuserId write FuserId;
    property transId: WideString read FtransId write FtransId;
    property referenceId: WideString read FreferenceId write FreferenceId;
    property referenceTime: WideString read FreferenceTime write FreferenceTime;
    property signType: WideString read FsignType write FsignType;
    property reserve: WideString read Freserve write Freserve;
    property returnCode: WideString read FreturnCode write FreturnCode;
    property errorCode: WideString read FerrorCode write FerrorCode;
    property errorMsg: WideString read FerrorMsg write FerrorMsg;
  end;



  // ************************************************************************ //
  // Namespace : http://www.jhlss.gov.cn/esb/TargetService
  // ************************************************************************ //
  recordsType = class(TRemotable)
  private
    Ftype_: WideString;
    Frecord_: WideString;
  published
    property type_: WideString read Ftype_ write Ftype_;
    property record_: WideString read Frecord_ write Frecord_;
  end;

  ArrayOfRecordsType = array of recordsType;    { "http://www.jhlss.gov.cn/esb/TargetService" }


  // ************************************************************************ //
  // Namespace : http://www.jhlss.gov.cn/esb/TargetService
  // ************************************************************************ //
  bodyType = class(TRemotable)
  private
    Frecords: ArrayOfRecordsType;
    Frecord_: WideString;
  public
    destructor Destroy; override;
  published
    property records: ArrayOfRecordsType read Frecords write Frecords;
    property record_: WideString read Frecord_ write Frecord_;
  end;


  // ************************************************************************ //
  // Namespace : http://www.jhlss.gov.cn/esb/TargetService
  // soapAction: http://www.jhlss.gov.cn/esb/TargetService/execute
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : WServiceSoap
  // service   : WService
  // port      : WServiceSoap
  // URL       : http://localhost:8888/WService.asmx
  // ************************************************************************ //
  WServiceSoap = interface(IInvokable)
  ['{A11F9456-3895-51E5-7AAC-A04D3139C3BF}']
    procedure execute(const routeId: WideString; const header: headerType; const body: bodyType; const signData: WideString; out routeId1: WideString; out header1: headerType; out body1: bodyType; out signData1: WideString); stdcall;
  end;

function GetWServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WServiceSoap;


implementation

function GetWServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WServiceSoap;
const
  defWSDL = 'http://localhost:8888/WService.asmx?wsdl';
  defURL  = 'http://localhost:8888/WService.asmx';
  defSvc  = 'WService';
  defPrt  = 'WServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor bodyType.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(Frecords)-1 do
    if Assigned(Frecords[I]) then
      Frecords[I].Free;
  SetLength(Frecords, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(WServiceSoap), 'http://www.jhlss.gov.cn/esb/TargetService', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WServiceSoap), 'http://www.jhlss.gov.cn/esb/TargetService/execute');
  RemClassRegistry.RegisterXSClass(headerType, 'http://www.jhlss.gov.cn/esb/TargetService', 'headerType');
  RemClassRegistry.RegisterXSClass(recordsType, 'http://www.jhlss.gov.cn/esb/TargetService', 'recordsType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(recordsType), 'type_', 'type');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(recordsType), 'record_', 'record');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecordsType), 'http://www.jhlss.gov.cn/esb/TargetService', 'ArrayOfRecordsType');
  RemClassRegistry.RegisterXSClass(bodyType, 'http://www.jhlss.gov.cn/esb/TargetService', 'bodyType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(bodyType), 'record_', 'record');

end. 