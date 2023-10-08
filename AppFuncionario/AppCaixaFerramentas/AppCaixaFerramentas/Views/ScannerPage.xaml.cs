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
    public partial class ScannerPage : ContentPage
    {
        public ScannerPage()
        {
            InitializeComponent();
        }

        private void scanner_OnScanResult(ZXing.Result result)
        {
            Vibration.Vibrate(100);
            scanner.IsScanning = false;

            Device.BeginInvokeOnMainThread(async () =>
            {
                MessagingCenter.Send<ScannerPage, string>(this, "scannerResult", $"{result.Text}");
                await Navigation.PopAsync();
            });
        }
    }
}