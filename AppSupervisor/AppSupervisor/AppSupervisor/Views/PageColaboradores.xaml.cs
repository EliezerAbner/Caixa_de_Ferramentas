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
            }

            layoutNovoColaborador.IsVisible = true;
            layoutListaColaborador.IsVisible = false;
            btnCadastar.IsEnabled = false;
        }

		public PageColaboradores(bool novoFuncionario, int idSupervisor)
		{
			InitializeComponent ();

            layoutNovoColaborador.IsVisible = false;
            layoutListaColaborador.IsVisible = true;
            lblTitulo.Text = "Meus Colaboradores";

            try
            {
                Funcionario funcionario = new Funcionario();
                lista.ItemsSource = funcionario.ListaFuncionarios(idSupervisor);
            }
            catch (Exception ex)
            {
                DisplayAlert("Erro", "Infelizmente não estamos conseguindo obter a lista de colaboradores. Erro: "+ex.Message+"", "OK");
            }
        }

        private void txtSenhaNov_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtSenha.Text != txtSenhaNov.Text)
            {
                txtSenhaNov.TextColor = Color.FromHex("#F0555E");
                lblSenha.IsVisible = true;
                btnCadastar.IsEnabled = false;
            }
            else
            {
                txtSenhaNov.TextColor = Color.Black;
                lblSenha.IsVisible = false;
                btnCadastar.IsEnabled = true;
            }
        }

        private void btnCancelar_Clicked(object sender, EventArgs e)
        {
            var pagAnterior = Navigation.NavigationStack.LastOrDefault();
            Navigation.PushAsync(new PageMeusFuncionarios());
            Navigation.RemovePage(pagAnterior);
        }

        private void btnCadastar_Clicked(object sender, EventArgs e)
        {
			if (txtNome.Text != "" && txtEmail.Text != "" && txtCargo.Text != "" && txtSenha.Text != "" && txtSenhaNov.Text != "" && pickerSetores.SelectedItem.ToString() != "")
			{
                if(btnCadastar.Text == "Editar")
                {
                    DisplayAlert("Teste", "Teste :)", "OK");
                }
                else
                {
                    try
                    {
                        Funcionario novoFuncionario = new Funcionario()
                        {
                            SupervisorId = 2, //pro futuro
                            NomeFuncionario = txtNome.Text,
                            Email = txtEmail.Text,
                            SetorId = pickerSetores.SelectedIndex,
                            Cargo = txtCargo.Text,
                            Senha = txtSenha.Text
                        };

                        novoFuncionario.CadastrarFuncionario(novoFuncionario);
                    }
                    catch (Exception ex)
                    {
                        DisplayAlert("Erro", "" + ex.Message + "", "OK");
                    }
                }

                var pagAnterior = Navigation.NavigationStack.LastOrDefault();
                Navigation.PushAsync(new PageMeusFuncionarios());
                Navigation.RemovePage(pagAnterior);
            }
            else
            {
                DisplayAlert("Informações faltando", "Insira todas as informações necessárias", "OK");
            }
        }

        private void SwipeItem_Invoked(object sender, EventArgs e)
        {
            var editarBtn = sender as MenuItem;
            var funcionario = editarBtn.CommandParameter as Funcionario;

            layoutListaColaborador.IsVisible = false;
            layoutNovoColaborador.IsVisible = true;
            lblTitulo.Text = "Editar Informações";

            Setor setor = new Setor();
            pickerSetores.ItemsSource = setor.BuscarSetor();

            txtNome.Text = funcionario.NomeFuncionario;
            txtEmail.Text = funcionario.Email;
            txtCargo.Text = funcionario.Cargo;
            pickerSetores.SelectedIndex = funcionario.SetorId;
            
            lblLogin.IsVisible = false;
            slSenha.IsVisible = false;
            slSenhaNov.IsVisible = false;

            btnCadastar.Text = "Editar";
        }

        
    }
}