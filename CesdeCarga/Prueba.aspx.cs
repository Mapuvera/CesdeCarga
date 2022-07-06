using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CesdeCarga
{
    public partial class Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtcadena.Text)) throw new Exception("Ingrese texto a encriptar.");
                Encripcion obclsEncriptacion = new Encripcion();
                string stkey = ConfigurationManager.AppSettings["stkey"];

                lblTextoEncriptado.Text = obclsEncriptacion.Encriptar(txtcadena.Text, stkey);
            }
            catch (Exception ex)
            {

            }
        }
    }
}