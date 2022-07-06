using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CesdeCarga
{
    public partial class AgregarCombo : System.Web.UI.Page
    {
   
       
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex= 0;
        }

        protected void btnCarroceria_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
           
        }

        protected void btnTipoSolicitud_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            
        }

        protected void btnTipoVehiculo_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            
        }

        protected void btnRol_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            
        }

    

       

        protected void btnAgregarCarroceria_Click(object sender, EventArgs e)
        {
            ConexionBD Combo = new ConexionBD();
            
            try
            {

                int AgregarCombo = Combo.GrabarCombo( System.Convert.ToInt32(txtIdCarroceria.Text), txtNombreCarroceria.Text);
         
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnAgregarSolicitud_Click(object sender, EventArgs e)
        {
            ConexionBD Combo = new ConexionBD();

            try
            {

                int AgregarCombo = Combo.GrabarCombo1(System.Convert.ToInt32(txtIdSolicitud.Text), txtNombreSolicitud.Text);
             
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnAgregarVehiculo_Click(object sender, EventArgs e)
        {
            ConexionBD Combo = new ConexionBD();

            try
            {

                int AgregarCombo = Combo.GrabarCombo2(System.Convert.ToInt32(txtIdVehiculo.Text),txtNombreVehiculo.Text, txtModelo.Text, txtPlaca.Text);
             
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnAgregarRol_Click(object sender, EventArgs e)
        {
            ConexionBD Combo = new ConexionBD();

            try
            {

                int AgregarCombo = Combo.GrabarCombo3(System.Convert.ToDecimal(txtIdRol.Text), txtNombreRol.Text);
                
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnRegresar1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnRegresar2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnRegresar3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnRegresar4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}