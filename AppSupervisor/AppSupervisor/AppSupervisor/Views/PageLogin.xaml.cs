using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppSupervisor.Model;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;

namespace AppSupervisor.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageLogin : ContentPage
	{
        private string email;

		public PageLogin ()
		{
			InitializeComponent ();
		}

        private void btnLogin_Clicked(object sender, EventArgs e)
        {
            if (txtEmail.Text == null)
            {
                DisplayAlert("Erro", "Email não preenchido", "OK");
                txtEmail.Focus();
            }
            else if (!txtEmail.Text.Contains("@"))
            {
                DisplayAlert("Erro", "Insira um email válido", "OK");
                txtEmail.Focus();
            }
            else if (txtSenha.Text == null)
            {
                DisplayAlert("Erro", "Senha não preenchida", "OK");
                txtSenha.Focus();
            }
            else
            {
                //email = txtEmail.Text;
                email = "marcos@teste.com";

                try
                {
                    Supervisor supervisor = new Supervisor()
                    {
                        Email = txtEmail.Text,
                        Senha = txtSenha.Text
                    };

                    //bool autorizado = supervisor.FazerLogin(supervisor);

                    if (true) //autorizado
                    {
                        var pagAnterior = Navigation.NavigationStack.LastOrDefault();
                        Navigation.PushAsync(new PageMeusFuncionarios(email));
                        Navigation.RemovePage(pagAnterior);
                    }
                    else
                    {
                        DisplayAlert("Login", "Erro ao logar. Insira novamente as informações", "OK");
                    }
                }
                catch (Exception ex)
                {
                    DisplayAlert("Erro", ""+ex.Message+"", "OK");
                }
            }

        }
    }
}