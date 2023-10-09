using AppSupervisor.Model;
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
	public partial class PageVerificacoes : ContentPage
	{
		private int idSupervisor;
		public PageVerificacoes (int idObtido)
		{
			InitializeComponent ();

			idSupervisor = idObtido;

			Agendamento agendamento = new Agendamento ();
			pickerAgendamentos.ItemsSource = agendamento.ListaAgendamentos(idObtido);
        }
	}
}