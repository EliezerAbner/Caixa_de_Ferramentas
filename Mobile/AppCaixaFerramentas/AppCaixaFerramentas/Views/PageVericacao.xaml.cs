using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageVericacao : ContentPage
    {
        public PageVericacao()
        {
            InitializeComponent();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {

        }

        private void ZXingScannerView_OnScanResult(ZXing.Result result)
        {
            var duration = TimeSpan.FromMilliseconds(50);
            Vibration.Vibrate(duration);
            Device.BeginInvokeOnMainThread(() =>
            {
                scanResultTest.Text = result.Text + " (type: " + result.BarcodeFormat.ToString() + ")";
            });
        }
    }
}