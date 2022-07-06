using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CesdeCarga
{
    public partial class RegistroPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarDropDownList();
                llenarDropDownList1();
                llenarDropDownList2();
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ConexionBD res = new ConexionBD();

            int ValidaPedido = res.ValidarPedido(System.Convert.ToInt32(idPedido.Text));
            
            if (ValidaPedido == 1)
            {
                lblmensaje.Text= "Este pedido ya se encuentra registrado";
                lblmensaje.Visible = true;
            }
            else
            {
                
                int RegistroPedido = res.RegistrarPedido(System.Convert.ToInt32(idPedido.Text), txtFecha.Text, System.Convert.ToInt32(ddltipo.Text), System.Convert.ToDecimal(txtIdCliente.Text), txtOrigen.Text, txtDestino.Text,
                                                    txtDireccionCargue.Text, txtFechaCargue.Text, txtHoraCargue.Text, System.Convert.ToInt32(txtContactoCargueCelular.Text), txtDireccionDescargue.Text,
                                                    txtDireccionDescargue.Text, txtHoraDescargue.Text, System.Convert.ToInt32(txtContactoDescargueCelular.Text), System.Convert.ToInt32(txtValorCargue.Text),
                                                    System.Convert.ToInt32(ddlTipoVehiculo.Text), System.Convert.ToInt32( ddlCarroceria.Text), System.Convert.ToInt32(txtNumeroEntrega.Text), System.Convert.ToDecimal(txtPesoVolumen.Text), txtFlete.Text, System.Convert.ToInt32(txtTarifa.Text),
                                                    txtMargen.Text, System.Convert.ToDecimal(txtContactoComercial.Text), ddlConfirmado.Text,txtObservaciones.Text);
                if (RegistroPedido == 1)
                {
                    lblmensaje.Text = "No ha sido registrado correctamente";
                    lblmensaje.Visible = true;
                }
                else
                {
                    lblmensaje.Text = "Ha sido registrado correctamente";
                    lblmensaje.Visible = true;
                    
                }
            }


            
        }

        protected void llenarDropDownList()
        {
            ConexionBD consultar = new ConexionBD();
            ddlTipoVehiculo.DataSource = consultar.Consultar("SELECT IdTipoVehiculo,NombreVehiculo FROM T_TipoVehiculo");
            ddlTipoVehiculo.DataTextField = "NombreVehiculo";
            ddlTipoVehiculo.DataValueField = "IdTipoVehiculo";

            ddlTipoVehiculo.DataBind();
            ddlTipoVehiculo.Items.Insert(0, new ListItem("Seleccionar", "0"));



        }

        protected void llenarDropDownList1()
        {
            ConexionBD consultar = new ConexionBD();
            ddlCarroceria.DataSource = consultar.Consultar("SELECT * FROM T_Carroceria");
            ddlCarroceria.DataTextField = "NombreCarroceria";
            ddlCarroceria.DataValueField = "IdCarroceria";

            ddlCarroceria.DataBind();
            ddlCarroceria.Items.Insert(0, new ListItem("Seleccionar", "0"));



        }

        protected void llenarDropDownList2()
        {
            ConexionBD consultar = new ConexionBD();
            ddltipo.DataSource = consultar.Consultar("SELECT * FROM T_TipoSolicitud");
            ddltipo.DataTextField = "NombreSolicitud";
            ddltipo.DataValueField = "IdSolicitud";

            ddltipo.DataBind();
            ddltipo.Items.Insert(0, new ListItem("Seleccionar", "0"));



        }
    }
}