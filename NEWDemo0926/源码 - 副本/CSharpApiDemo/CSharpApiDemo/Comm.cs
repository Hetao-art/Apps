using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace CSharpApiDemo
{
    public class Comm
    {
        public static string GetMD5(string strText)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] result = md5.ComputeHash(System.Text.Encoding.UTF8.GetBytes(strText));
            return BitConverter.ToString(result).Replace("-", "");
        }
        /// <summary>
        /// 更新节点值
        /// </summary>
        /// <param name="node"></param>
        /// <param name="nodevalue"></param>
        public static void ChangeConfiguration(string node, string nodevalue)
        {
            //读取程序集的配置文件
            string assemblyConfigFile = Assembly.GetEntryAssembly().Location;

            Configuration config = ConfigurationManager.OpenExeConfiguration(assemblyConfigFile);
            //获取appSettings节点
            AppSettingsSection appSettings = (AppSettingsSection)config.GetSection("appSettings");

            //删除name，然后添加新值
            appSettings.Settings.Remove(node);
            appSettings.Settings.Add(node, nodevalue);

            //保存配置文件
            config.Save();
        }
    }
}
