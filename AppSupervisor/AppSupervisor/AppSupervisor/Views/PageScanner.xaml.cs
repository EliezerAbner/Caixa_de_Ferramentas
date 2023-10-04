using AppSupervisor.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppSupervisor.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageScanner : ContentPage
    {
        public PageScanner()
        {
            InitializeComponent();
        }

        private void ZXingScannerView_OnScanResult(ZXing.Result result)
        {
            Vibration.Vibrate(100);
            scanner.IsScanning = false;
            
            Device.BeginInvokeOnMainThread(async () =>
            {
                MessagingCenter.Send<PageScanner, string>(this, "ShowError", $"{result.Text}");
                await Navigation.PopAsync();
            });
        }
    }
}