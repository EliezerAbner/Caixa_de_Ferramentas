using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppCaixaFerramentas.Controllers;
using AppCaixaFerramentas.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageHome : ContentPage
    {
        public PageHome()
        {
            InitializeComponent();
            //MySqlController buscaMsg = new MySqlController();

            Mensagem msgDoDia = new Mensagem();
            //msgDoDia = buscaMsg.MensagemDoDia();

            if (false)
            {
                frameMensagem.IsVisible = true;
                lblMsg.Text = msgDoDia.mensagem;
            }
            else
            {
                noMessage.IsVisible = true;
            }

          
        }

        private void btnLike_Clicked(object sender, EventArgs e)
        {
            DisplayAlert("Uma Pena", "Ainda estamos trabalhando por aqui. Volte mais tarde", "OK");
        }

        private void btnShare_Clicked(object sender, EventArgs e)
        {
            DisplayAlert("Uma Pena", "Ainda estamos trabalhando por aqui. Volte mais tarde", "OK");
        }
    }
}