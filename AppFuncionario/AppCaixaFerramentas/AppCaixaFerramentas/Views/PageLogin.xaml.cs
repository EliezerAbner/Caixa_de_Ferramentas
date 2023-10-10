using AppCaixaFerramentas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageLogin : ContentPage
    {
        private string email;

        public PageLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Clicked(object sender, EventArgs e)
        {
            email = txtEmail.Text;

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
                Funcionario funcionario = new Funcionario()
                {
                    Senha = txtSenha.Text,
                    Email = txtEmail.Text
                };

                //bool autorizar = funcionario.Login(funcionario);

                if (true) //autorizar
                {
                    var pagAnterior = Navigation.NavigationStack.LastOrDefault();
                    Navigation.PushAsync(new PageHome(email));
                    Navigation.RemovePage(pagAnterior);
                }
                else
                {
                    DisplayAlert("Login", "Erro ao logar. Insira novamente as informações", "OK");
                }   
            }  
        }
    }
    //info sobre table customizada
    //https://stackoverflow.com/questions/64887786/xamarin-forms-cradle-fab
}
