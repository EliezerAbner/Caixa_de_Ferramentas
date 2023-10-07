using AppCaixaFerramentas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageFerramentas : ContentPage
	{

		public PageFerramentas (int idObtido)
		{
			InitializeComponent ();

			Ferramenta caixa = new Ferramenta ();
            lista.ItemsSource = caixa.listaFerramentas(idObtido);
        }

		private void btnVerificar_Invoked(object sender, EventArgs e)
		{
			

            MessagingCenter.Subscribe<PageScanner, string>(this, "scannerResult", (view, message) =>
            {
				var ferram = new Ferramenta();
				//ferram = listaFerramentas.Find(x => x.Codigo == message);
                
				if(ferram != null)
				{
					//listaFerramentasVerificadas.Add(ferram);
					//listaFerramentas.Remove(ferram);

					//lista.ItemsSource = null;
					//lista.ItemsSource = listaFerramentas;
                }
				else
				{
					DisplayAlert("Código Errado", "", "OK");
				}
            });
        }
	}
}