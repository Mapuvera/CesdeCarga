using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;

namespace CesdeCarga
{
    public class Encripcion
    {

        public string Encriptar(string Cadena,string stkey)
        {
            try
            {
                TripleDESCryptoServiceProvider des;
                MD5CryptoServiceProvider hashmd5;

                byte[] keyhash, buff;
                string stEncripted;

                hashmd5 = new MD5CryptoServiceProvider();
                keyhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(stkey));

                hashmd5 = null;
                des = new TripleDESCryptoServiceProvider();

                des.Key = keyhash;
                des.Mode = CipherMode.ECB;

                buff = ASCIIEncoding.ASCII.GetBytes(Cadena);
                stEncripted = Convert.ToBase64String(des.CreateEncryptor().TransformFinalBlock(buff, 0, buff.Length));

                return stEncripted;
            }
            catch(Exception ex) { throw ex; }
        }

        public string Desencriptar(string Cadena, string stkey)
        {
            try
            {
                TripleDESCryptoServiceProvider des;
                MD5CryptoServiceProvider hashmd5;

                byte[] keyhash, buff;
                string stDecripted;

                hashmd5 = new MD5CryptoServiceProvider();
                keyhash = hashmd5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(stkey));

                hashmd5 = null;
                des = new TripleDESCryptoServiceProvider();

                des.Key = keyhash;
                des.Mode = CipherMode.ECB;

                buff = Convert.FromBase64String(Cadena);
                stDecripted = ASCIIEncoding.ASCII.GetString(des.CreateDecryptor().TransformFinalBlock(buff, 0, buff.Length));

                return stDecripted;
            }
            catch(Exception ex) { throw ex; }
        }
    }
}