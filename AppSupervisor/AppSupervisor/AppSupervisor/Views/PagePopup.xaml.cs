using Rg.Plugins.Popup.Extensions;
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
	public partial class PagePopup : Rg.Plugins.Popup.Pages.PopupPage
	{
		public PagePopup ()
		{
			InitializeComponent ();
		}

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PopPopupAsync();
        }

        private void PopupPage_BackgroundClicked(object sender, EventArgs e)
        {
            DisplayAlert("Teste", "Teste", "ok");
        }
    }
}