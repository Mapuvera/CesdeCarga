using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CesdeCarga
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int validarvacios(string Usuario, string Contraseña)
        {
            int bandera;


            if (Usuario == "" || Contraseña == "")
            {
                bandera = 0;
            }
            else
            {
                bandera = 1;
            }
            return bandera;
        }










        protected void btningresar_Click1(object sender, EventArgs e)
        {

            int validar;
            ConexionBD Datos = new ConexionBD();

            validar = validarvacios(txtPassword.Text, txtUsuario.Text);

            if (validar == 0)
            {
                mensaje.Text = "Existen campos sin diligenciar. Por favor verifique";
                mensaje.Visible = true;

            }
            else
            {
                if (Datos.ValidarUsuario(txtUsuario.Text, txtPassword.Text) == 1)
                {
                    Response.Redirect("Menu.aspx");
                }

                else
                {
                    mensaje.Text = "Usuario o contraseña Incorrecta. Por favor verifique";
                    mensaje.Visible = true;
                }
            }
        }

    } }




