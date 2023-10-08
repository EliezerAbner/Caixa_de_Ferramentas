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
	}
}