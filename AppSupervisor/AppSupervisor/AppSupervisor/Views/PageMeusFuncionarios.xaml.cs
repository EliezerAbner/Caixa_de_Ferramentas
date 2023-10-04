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
	public partial class PageMeusFuncionarios : ContentPage
	{
        private int idSupervisor = 2;

		public PageMeusFuncionarios()
		{
			InitializeComponent ();
		}

        public PageMeusFuncionarios(int idObtido)
        {
            InitializeComponent();
            //idSupervisor = idObtido;
        }

        private void btnNovoFuncionario_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageColaboradores());
        }

        private void btnListaFuncionario_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageColaboradores(false, idSupervisor));
        }

        private void btnNovaCaixa_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageCaixaFerram(idSupervisor));
        }

        private void btnChecarVerificacoes_Clicked(object sender, EventArgs e)
        {

        }

        private void btnAgendar_Clicked(object sender, EventArgs e)
        {

        }

        private void btnNovoAnuncio_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageMensagens());
        }

        private async void btnLogout_Clicked(object sender, EventArgs e)
        {
           var resposta = await DisplayAlert("Confirmar Logout", "Tem certeza que deseja sair?", "Sim", "Não");

            if (resposta)
            {
                var pagAnterior = Navigation.NavigationStack.LastOrDefault();
                await Navigation.PushAsync(new PageLogin());
                Navigation.RemovePage(pagAnterior);
            }
        }

        private void btnSair_Clicked(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.GetCurrentProcess().Kill();
            }
            catch (Exception ex)
            {
                DisplayAlert("Erro", ""+ex.Message+"", "OK");
            }
        }
    }
}