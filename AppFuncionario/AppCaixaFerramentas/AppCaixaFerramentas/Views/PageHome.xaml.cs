using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            Mensagem msgDoDia = new Mensagem();

            try
            {
                msgDoDia = msgDoDia.NovaMensagem();
            }
            catch (Exception ex)
            {
                DisplayAlert("Erro", "" + ex.Message + "", "OK");
                msgDoDia.Msg = null;
            }

            if (msgDoDia.Msg != null)
            {
                frameMensagem.IsVisible = true;
                lblMsg.Text = msgDoDia.Msg;
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