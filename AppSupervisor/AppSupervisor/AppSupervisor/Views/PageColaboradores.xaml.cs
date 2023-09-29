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
	public partial class PageColaboradores : ContentPage
	{
		public PageColaboradores ()
		{
			InitializeComponent ();
		}
		public PageColaboradores(bool novoFuncionario)
		{
			InitializeComponent ();
		}

        private void btnCancelar_Clicked(object sender, EventArgs e)
        {
            var pagAnterior = Navigation.NavigationStack.LastOrDefault();
            Navigation.PushAsync(new BottonTab());
            Navigation.RemovePage(pagAnterior);
        }

        private void btnCadastar_Clicked(object sender, EventArgs e)
        {

        }
    }
}