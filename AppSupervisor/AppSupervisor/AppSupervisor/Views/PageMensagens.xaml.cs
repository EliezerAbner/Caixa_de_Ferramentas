using AppSupervisor.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppSupervisor.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageMensagens : ContentPage
	{
		private int supervisorId;

		public PageMensagens (int idObtido)
		{
			InitializeComponent ();
			supervisorId = idObtido; 
		}

		private void btnCadastar_Clicked(object sender, EventArgs e)
		{
			DateTime di = dpDataInicial.Date + tpHoraInicial.Time;
			DateTime df = dpDataFinal.Date + tpHoraFinal.Time;

			try
			{
				Mensagem msg = new Mensagem()
				{
					SupervisorId = supervisorId,
					Msg = txtMsg.Text,
					DataInicial = di.ToString(),
					DataFinal = df.ToString(),
                };

                msg.NovaMensagem();
            }
			catch (Exception ex)
			{
				DisplayAlert("Erro", $"Infelizmente não estamos conseguindo inserir novos anúncios. Erro: {ex.Message}", "OK");
			}
        }

		private void btnCancelar_Clicked(object sender, EventArgs e)
		{
			Navigation.PopAsync();
        }
    }
}