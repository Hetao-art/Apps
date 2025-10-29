using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;

namespace CSharpApiDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            Init();
        }

        #region 初始化

        private void Init()
        {
            tb_url.Text = ConfigurationManager.AppSettings["Url"];
            tb_userId.Text = ConfigurationManager.AppSettings["UserId"];
            tb_token.Text = ConfigurationManager.AppSettings["Token"];
            cb_method.Checked = true;
            #region add


            rtb_add.Text = @"{
	'Medical': {
		'SciCardNo':'123456',
		'SciCardIdentified':'4564646',
		'AdmissionNo': '',
		'HospitalId': '',
		'OutBedNum': '1',
		'AdmissionDate': '2016-05-19 19:05:08',
		'DischargeDate': '2016-05-20 19:05:08',
		'DoctorCode': '4',
		'DoctorName': '5',
		'IsDrugAllergy': '1',
		'AllergyDrugCode': '7',
		'AllergyDrugName': '8',
		'IsPathologicalExamination': '1',
		'PathologyCode': '10',
		'IsHospitalInfected': '1',
		'HospitalInfectedCode': '12',
		'BloodTypeS': '13',
		'BloodTypeE': '14',
		'LeaveHospitalType': '15',
		'ChiefComplaint': '16',
		'MedicalHistory': '17',
		'SurgeryHistory': '18',
		'BloodTransHistory': '19',
		'Marriage': '1',
		'Height': '120',
		'Weight': '40',
		'NewbornDate': '2016-05-19 19:05:08',
		'NewbornWeight': '6',
		'NewbornCurrentWeight': '14',
		'BearPregnancy': '0',
		'BearYie': '0',
		'AdmissionDiseaseId': '28',
		'AdmissionDiseaseName': '29',
		'DiagnosePosition1': '30',
		'DischargeDiseaseId': '31',
		'DischargeDiseaseName': '32',
		'DiagnosePosition2': '33',
		'Tsblbs': '34',
		'DiagnosisCode1': '35',
		'DiagnosisName1': '36',
		'DiagnosisCode2': '37',
		'DiagnosisName2': '38',
		'DiagnosisCode3': '39',
		'DiagnosisName3': '40',
		'DiagnosisCode4': '41',
		'DiagnosisName4': '42',
		'DiagnosisCode5': '43',
		'DiagnosisName5': '44',
		'DiagnosisCode6': '45',
		'DiagnosisName6': '46',
		'DiagnosisCode7': '47',
		'DiagnosisName7': '48',
		'DiagnosisCode8': '49',
		'DiagnosisName8': '50',
		'DiagnosisCode9': '51',
		'DiagnosisName9': '52',
		'DiagnosisCode10': '53',
		'DiagnosisName10': '54',
		'DiagnosisCode11': '55',
		'DiagnosisName11': '56',
		'DiagnosisCode12': '57',
		'DiagnosisName12': '58',
		'DiagnosisCode13': '59',
		'DiagnosisName13': '60',
		'DiagnosisCode14': '61',
		'DiagnosisName14': '62',
		'DiagnosisCode15': '63',
		'DiagnosisName15': '64',
		'DiagnosisCode16': '65',
		'DiagnosisName16': '66'
	},
	'ListCheck': [{
			'CheckId': '1',
			'DepartmentCode': '2',
			'DepartmentName': '3',
			'ApplyProjectCode': '4',
			'ApplyProjectName': '5',
			'ApplyDoctor': '6',
			'ApplyDoctorName': '7',
			'ApplyDatetime': '2016-05-19 19:05:08',
			'ReportDatetime': '2016-05-19 19:05:08',
			'CheckPositionCode': '10',
			'Abnormal': '10',
			'CheckResult': '12'
		}
	],
	'ListOperation': [{
			'OperationRecordNo': '1',
			'OperationDoctorCode': '2',
			'OperationDoctorName': '3',
			'FirstOperdoctorcode': '4',
			'FirstOperdoctorname': '5',
			'SecondOperdoctorcode': '6',
			'SecondOperdoctorname': '7',
			'AnesthesiologistCode': '1',
			'AnesthesiologistName': '9',
			'OperationDate': '2016-05-19 19:05:08',
			'OperationFinishDate': '2016-05-19 19:05:08',
			'AnaesthesiaType': '1',
			'IsComplication': '1',
			'ComplicationCode': '00.51001',
			'ComplicationName': '双心室起搏伴心内除颤器置入术',
			'OperationRecord': '16',
			'RecordDoctorCode': '17',
			'RecordDoctorName': '18',
			'ListOperationDetail': [{
					'OperationRecordNo': '1',
					'OperationNo': '2',
					'OperationCode': '00.51001',
					'OperationName': '双心室起搏伴心内除颤器置入术',
					'OperationLevel': '4',
					'OperationIncisionClass': '6',
					'OperationHealClass': '3',
					'IsMajorIden': '1',
					'IsIatrogenic': '1'
				}
			]
		}
	],
	'LeaveHospital': {
		'DischargeOutcome': '1',
		'HospitalizationSituation': '2',
		'DtProcess': '3',
		'LeaveHospitalStatus': '4',
		'LeaveDoctorAdvice': '5'
	}
}

";
            #endregion
            rtb_get.Text = "{'AdmissionNo':'1104','HospitalId':'1104'}";
            rtb_invalid.Text = "{'AdmissionNo':'1104','HospitalId':'1104'}";
            tb_webService.Checked = true;
            lb_urlType.Text = "MedicalServiceXml.asmx";
            bt_saveConfig.Visible = false;
#if DEBUG
            bt_saveConfig.Visible = true;

#endif
        }

        #endregion

        #region 调用
        private void bt_callApi_Click(object sender, EventArgs e)
        {
            try
            {

                Exec();

            }
            catch (Exception ex)
            {
                rtb_response.Text = ex.Message;
            }

        }
        private async void Exec()
        {

            rtb_response.Text = string.Empty;
            bt_callApi.Enabled = false;
            var data = "";
            var serviceId = "";
            if (tc_bu.SelectedTab == tp_add)
            {
                data = rtb_add.Text; serviceId = "5001";
            }
            else if (tc_bu.SelectedTab == tp_get)
            {
                data = rtb_get.Text; serviceId = "5002";
            }
            else if (tc_bu.SelectedTab == tp_invalid)
            {
                data = rtb_invalid.Text; serviceId = "5003";

            }
            await Task.Run(() =>
            {

                try
                {

                    if (rb_webApi.Checked)
                    {
                        Json(serviceId, data);
                    }
                    else
                    {
                        Xml(serviceId, data);
                    }

                }
                catch (Exception ex)
                {
                    Invoke(new MethodInvoker(delegate() {
                        rtb_response.Text = ex.Message;
                    }));
                }
            });
            bt_callApi.Enabled = true;
        }
        #endregion


        #region 方式
        private void Xml(string serviceId,string data)
        {
            WebRequest request = WebRequest.Create(tb_url.Text + lb_urlType.Text);
            request.ContentType = "text/xml;charset=utf-8";
            request.Method = "POST";

            StringBuilder builder = new StringBuilder();

            builder.Append("<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">");
            builder.Append("<soap:Body>");
            builder.Append("<MedicalServiceXml xmlns=\"http://tempuri.org/\">");
            var nonce = Guid.NewGuid().ToString();

            builder.Append(string.Format("<serviceId>{0}</serviceId>",serviceId));
            builder.Append(string.Format("<userId>{0}</userId>", tb_userId.Text));
            builder.Append(string.Format("<nonce>{0}</nonce>", cb_method.Checked ? nonce : ""));
            builder.Append(string.Format("<data><![CDATA[{0}]]></data>", data));
            builder.Append(string.Format("<siginMethod>{0}</siginMethod>", cb_method.Checked ? "2" : "1"));
            builder.Append(string.Format("<signData>{0}</signData>", GetSign(data, nonce)));
            builder.Append("</MedicalServiceXml>");
            builder.Append("</soap:Body>");
            builder.Append("</soap:Envelope>");

            using (Stream stream = request.GetRequestStream())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(builder.ToString());
                stream.Write(bytes, 0, bytes.Length);

            }
            HttpWebResponse res;
            try
            {
                res = (HttpWebResponse)request.GetResponse();
            }
            catch (WebException ex)
            {
                res = (HttpWebResponse)ex.Response;
            }
            using (StreamReader reader = new StreamReader(res.GetResponseStream(), Encoding.UTF8))
            {
                string temp;
                temp = reader.ReadToEnd();
                temp = temp.Replace("&lt;", "<").Replace("&gt;", ">");
                Invoke(new MethodInvoker(delegate () {
                    this.rtb_response.AppendText(temp + "\r\n");
                }));
            }
        }

        private void Json(string serviceId, string data)
        {
            WebRequest request = WebRequest.Create(tb_url.Text + lb_urlType.Text);
            request.ContentType = "application/x-www-form-urlencoded";
            request.Method = "POST";
            Dictionary<string, string> para = new Dictionary<string, string>();
            var nonce = Guid.NewGuid().ToString();
            Encoding myEncoding = System.Text.Encoding.UTF8;
            HttpUtility.UrlEncode(data, myEncoding);
            para.Add("serviceId", serviceId);
            para.Add("userId", tb_userId.Text);
            para.Add("nonce", cb_method.Checked ? nonce : "");
            para.Add("data", HttpUtility.UrlEncode(data, myEncoding));
            para.Add("siginMethod", cb_method.Checked ? "2" : "1");
            para.Add("signData", GetSign(data, nonce));

            StringBuilder builder = new StringBuilder();
            int i = 0;
            foreach (var item in para)
            {
                if (i > 0)
                    builder.Append("&");
                builder.AppendFormat("{0}={1}", item.Key, item.Value);
                i++;
            }
            byte[] bufferBytes = Encoding.UTF8.GetBytes(builder.ToString());
            request.ContentLength = bufferBytes.Length;


            using (var requestStream = request.GetRequestStream())
            {
                requestStream.Write(bufferBytes, 0, bufferBytes.Length);
            }

            HttpWebResponse res;
            try
            {
                res = (HttpWebResponse)request.GetResponse();
            }
            catch (WebException ex)
            {
                res = (HttpWebResponse)ex.Response;
            }
            using (StreamReader reader = new StreamReader(res.GetResponseStream(), Encoding.UTF8))
            {
                string temp;
                temp = reader.ReadToEnd();
                temp = temp.Replace("&lt;", "<").Replace("&gt;", ">");
                Invoke(new MethodInvoker(delegate () {
                    this.rtb_response.AppendText(temp + "\r\n");
                }));
            }
        }
        #endregion

        #region other
        private string GetSign(string data, string nonce)
        {

            if (cb_method.Checked)
            {
                var token = tb_token.Text;
                var userid = tb_userId.Text;
                return Comm.GetMD5(string.Format("{0}{1}{2}{3}", data, nonce, token, userid));
            }
            else
            {
                return Comm.GetMD5(string.Format("{0}{1}", tb_token.Text, tb_userId.Text));
            }
        }

        private void rb_webApi_Click(object sender, EventArgs e)
        {
            if (rb_webApi.Checked)
            {
                lb_urlType.Text = "MedicalServiceJson";
            }
            else
            {
                lb_urlType.Text = string.Empty;
            }
        }

        private void tb_webService_Click(object sender, EventArgs e)
        {
            if (tb_webService.Checked)
            {
                lb_urlType.Text = "MedicalServiceXml.asmx";
            }
            else
            {
                lb_urlType.Text = string.Empty;
            }
        }
        private void bt_saveConfig_Click(object sender, EventArgs e)
        {
            Comm.ChangeConfiguration("Url", tb_url.Text);
            Comm.ChangeConfiguration("UserId", tb_userId.Text);
            Comm.ChangeConfiguration("Token", tb_token.Text);
            rtb_response.Text = "Url、UserId、Token保存成功";
        }
        #endregion

    }
}
