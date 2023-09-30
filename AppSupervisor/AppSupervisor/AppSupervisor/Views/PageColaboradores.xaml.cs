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
	public partial class PageColaboradores : ContentPage
	{
		public PageColaboradores ()
		{
            try
            {
                InitializeComponent();

                Setor setor = new Setor();
                pickerSetores.ItemsSource = setor.BuscarSetor();
            }
            catch (Exception ex)
            {
                DisplayAlert("Erro", "Infelizmente não estamos conseguindo cadastrar novos colaboradores. Erro: "+ex.Message+"", "OK");
                btnCadastar.IsEnabled = false;
            }

            layoutNovoColaborador.IsEnabled = true;
		}
		public PageColaboradores(bool novoFuncionario)
		{
			InitializeComponent ();

            layoutNovoColaborador.IsVisible = false;
            layoutListaColaborador.IsVisible = true;
            lblTitulo.Text = "Meus Colaboradores";
        }

        private void btnCancelar_Clicked(object sender, EventArgs e)
        {
            var pagAnterior = Navigation.NavigationStack.LastOrDefault();
            Navigation.PushAsync(new BottonTab());
            Navigation.RemovePage(pagAnterior);
        }

        private void btnCadastar_Clicked(object sender, EventArgs e)
        {
			if (txtNome.Text != "" && txtEmail.Text != "" && txtCargo.Text != "" && txtSenha.Text != "" && txtSenhaNov.Text != "")
			{
                try
                {
                    Funcionario novoFuncionario = new Funcionario()
                    {
                        SupervisorId = 1, //pro futuro
                        NomeFuncionario = txtNome.Text,
                        Email = txtEmail.Text,
                        Setor =  "Teste",//corrigir
                        Cargo = txtCargo.Text
                    };

                    novoFuncionario.CadastrarFuncionario(novoFuncionario);
                }
                catch (Exception ex)
                {
                    DisplayAlert("Erro", "" + ex.Message + "", "OK");
                }

                var pagAnterior = Navigation.NavigationStack.LastOrDefault();
                Navigation.PushAsync(new BottonTab());
                Navigation.RemovePage(pagAnterior);
            }
        }
    }
}