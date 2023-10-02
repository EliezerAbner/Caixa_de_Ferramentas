using Rg.Plugins.Popup.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;

namespace AppSupervisor.Views.Popup
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PopupScanner : Rg.Plugins.Popup.Pages.PopupPage
    {
		public PopupScanner ()
		{
			InitializeComponent ();
		}

        private void ZXingScannerView_OnScanResult(ZXing.Result result)
        {
			Vibration.Vibrate();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PopPopupAsync();
        }
    }
}