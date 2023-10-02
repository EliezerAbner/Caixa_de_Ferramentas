﻿using AppSupervisor.Views.Popup;
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
	public partial class PageCaixaFerram : ContentPage
	{
		public PageCaixaFerram ()
		{
			InitializeComponent ();
		}

        private void Button_Clicked(object sender, EventArgs e)
        {
			Navigation.PushPopupAsync(new PagePopup());
        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {
			Navigation.PushPopupAsync (new PopupScanner());
        }
    }
}