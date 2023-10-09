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
    public partial class PageAgendar : ContentPage
    {
        private int supervisorId;

        public PageAgendar(int idObtido)
        {
            InitializeComponent();
            supervisorId = idObtido;
        }

        private void BtnCadastar_Clicked(object sender, EventArgs e)
        {
            DateTime di = dpDataInicial.Date + tpHoraInicial.Time;
            DateTime df = dpDataFinal.Date + tpHoraFinal.Time;

            string dataInicial = di.ToString("yyyy-MM-dd HH:mm:ss");
            string dataFinal = df.ToString("yyyy-MM-dd HH:mm:ss");

            try
            {
                Agendamento agendamento = new Agendamento()
                {
                    SupervisorId = supervisorId,
                    DataInicial = dataInicial,
                    DataFinal = dataFinal
                };
                agendamento.NovoAgendamento();
            }
            catch (Exception ex)
            {
                DisplayAlert("Erro", $"Não estamos conseguindo cadastrar novos agendamentos. Erro: {ex.Message}", "OK");
            }

            Navigation.PopAsync();
        }

        private void BtnCancelar_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }

        private void DpDataInicial_DateSelected(object sender, DateChangedEventArgs e)
        {
            if (e.NewDate < DateTime.Now)
            {
                dpDataInicial.Date = DateTime.Now;
            }
        }
    }
}