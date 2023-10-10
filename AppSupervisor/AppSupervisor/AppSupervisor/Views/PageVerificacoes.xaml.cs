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
		private int supervisorId;
		public PageVerificacoes (int idObtido)
		{
			InitializeComponent ();

			Agendamento agendamento = new Agendamento ();
			pickerAgendamentos.ItemsSource = agendamento.ListaAgendamentos(idObtido);

			supervisorId = idObtido;
        }

        private void pickerAgendamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
			Agendamento ag = pickerAgendamentos.SelectedItem as Agendamento;

            Verificacao verificacao = new Verificacao();
            lvVerificacoes.ItemsSource = verificacao.listaVerificacoes(supervisorId, ag.DataInicial, ag.DataFinal);
        }
    }
}