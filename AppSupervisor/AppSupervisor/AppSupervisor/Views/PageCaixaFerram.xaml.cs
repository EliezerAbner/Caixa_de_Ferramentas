using AppSupervisor.Model;
using Rg.Plugins.Popup.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Mobile;

namespace AppSupervisor.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageCaixaFerram : ContentPage
	{
        private List<Ferramenta> lista = new List<Ferramenta>();
        private string codigoCaixa;
        private string codigoFerramenta;
        private int caixaFerramentaId;

        public PageCaixaFerram()
        {
            InitializeComponent();
        }

        public PageCaixaFerram (int idSupervisor)
		{
			InitializeComponent ();

            btnApagar.IsEnabled = false;
            btnAdd.IsEnabled = false;
            btnCadastrar.IsEnabled = false;

            scannerCaixa.IsVisible = false;
            scannerCaixa.IsScanning = false;

            scannerFerram.IsVisible = false;
            scannerFerram.IsScanning = false;

            imgOk.IsVisible = false;

            Funcionario funcionario = new Funcionario();
            pickerFuncionarios.ItemsSource = funcionario.ListaFuncionarios(idSupervisor);
        }


        private void btnAdd_Clicked(object sender, EventArgs e)
        {
            if (txtNome != null)
            {
                Ferramenta novaFerramenta = new Ferramenta()
                {
                    CaixaFerramentaId = caixaFerramentaId,
                    NomeFerramenta = txtNome.Text,
                    Codigo = codigoFerramenta,
                    Descricao = txtDescricao.Text
                };

                lista.Add(novaFerramenta);
                listaFerramentas.ItemsSource = null;
                listaFerramentas.ItemsSource = lista;
                listaFerramentas.IsVisible = true;

                btnApagar.IsEnabled = true;
                btnCadastrar.IsEnabled = true;

                txtNome.Text = "";
                txtDescricao.Text = "";
            }
        }

        private void btnApagar_Clicked(object sender, EventArgs e)
        {
            txtDescricao.Text = "";
            codigoFerramenta = "";
            txtDescricao.Text = "";
        }

        private async void btnCadastar_Clicked(object sender, EventArgs e)
        {
            bool resposta = await DisplayAlert("Cadastrar Ferramentas", "Deseja cadastrar as ferramentas listadas?", "Sim", "Não");

            if (resposta)
            {
                
            }
        }

        private void btnRemoverItem_Clicked(object sender, EventArgs e)
        {
            var removerBtn = sender as MenuItem;
            var ferramenta = removerBtn.CommandParameter as Ferramenta;
            lista.Remove(ferramenta);

            listaFerramentas.ItemsSource = null;
            listaFerramentas.ItemsSource= lista;
        }

        private void btnObterCodigo_Clicked(object sender, EventArgs e)
        {
            if(pickerFuncionarios.SelectedIndex == -1)
            {
                DisplayAlert("Erro", "A quem pertence a caixa?", "OK");
            }
            else
            {
                scannerCaixa.IsVisible = true;
                scannerCaixa.IsScanning = true;
            }
        }

        private void btnCodigoFerram_Clicked(object sender, EventArgs e)
        {
            //scannerFerram.IsVisible = true;
            //scannerFerram.IsScanning = true;

            btnAdd.IsVisible = true;
        }

        private void scannerCaixa_OnScanResult(ZXing.Result result)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                Vibration.Vibrate(500);
                codigoCaixa = result.Text;

                scannerCaixa.IsScanning = false;
                scannerCaixa.IsVisible = false;

                imgOk.IsVisible = true;

                try
                {
                    Ferramenta caixa = new Ferramenta();
                    caixaFerramentaId = caixa.CadastrarCaixa(pickerFuncionarios.SelectedIndex, result.Text);
                }
                catch (Exception ex)
                {
                    DisplayAlert("Erro", "Infelizmente não estamos conseguindo cadastrar a caixa. Erro: " + ex.Message + "", "Ok");
                }
            });
            
        }

        private void scannerFerram_OnScanResult(ZXing.Result result)
        {
            Vibration.Vibrate(500);
            codigoFerramenta = result.Text;

            scannerFerram.IsScanning = false;
            scannerFerram.IsVisible = false;

            imgCodigoFerram.IsVisible = true;
        }

        
    }
}