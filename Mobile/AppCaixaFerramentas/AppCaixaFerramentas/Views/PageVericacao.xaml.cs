using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using AppCaixaFerramentas.Views;
using AppCaixaFerramentas.Models;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageVericacao : ContentPage
    {
        private int funcionarioId;

        public PageVericacao(int idRecebido)
        {
            InitializeComponent();
            funcionarioId = idRecebido;
        }

        private void ZXingScannerView_OnScanResult(ZXing.Result result)
        {
            var duration = TimeSpan.FromMilliseconds(50);
            Vibration.Vibrate(duration);

            Ferramenta verificar = new Ferramenta();
            string ferramentaId = verificar.BuscarFerramenta(result.Text);

            if (ferramentaId != null)
            {
                verificar.FazerVerificacao(Convert.ToInt16(ferramentaId), funcionarioId);

                Device.BeginInvokeOnMainThread(() =>
                {
                    Navigation.PushAsync(new PageListaFerramentas(true));
                });
            }
            else
            {
                DisplayAlert("Erro", "Ferramenta não encontrada em sua caixa de ferramentas. Tente novamente", "OK");
            }
        }
    }
}