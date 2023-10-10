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

        private string codigoFerramenta, codigoCaixa;

        private int caixaFerramentaId, funcionarioId;

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
            imgOk.IsVisible = false;
            imgCodigoFerram.IsVisible = false;

            Funcionario funcionario = new Funcionario();
            pickerFuncionarios.ItemsSource = funcionario.ListaFuncionarios(idSupervisor);
        }

        private async void BtnObterCodigo_Clicked(object sender, EventArgs e)
        {
            if (pickerFuncionarios.SelectedIndex == -1)
            {
                await DisplayAlert("Erro", "A quem pertence a caixa?", "OK");
            }
            else
            {
                await Navigation.PushAsync(new PageScanner());

                MessagingCenter.Subscribe<PageScanner, string>(this, "ShowError", (view, message) =>
                {
                    codigoCaixa = message;

                    try
                    {
                        Ferramenta caixa = new Ferramenta();
                        caixaFerramentaId = caixa.CadastrarCaixa(funcionarioId, codigoCaixa);
                        btnAdd.IsEnabled = true;
                        imgOk.IsVisible=true;

                        MessagingCenter.Unsubscribe<PageScanner, string>(this, "ShowError");
                    }
                    catch (Exception ex)
                    {
                        DisplayAlert("Erro", $"Erro ao cadastrar a caixa. Erro: {ex.Message}", "OK");
                    }
                });
            }
        }

        private void BtnCodigoFerram_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageScanner());

            MessagingCenter.Subscribe<PageScanner, string>(this, "ShowError", (view, message) =>
            {
                codigoFerramenta = message;
            });

            btnAdd.IsVisible = true;
        }


        private void BtnAdd_Clicked(object sender, EventArgs e)
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

                ApagarCampoFerramenta();
            }
        }

        private void BtnApagar_Clicked(object sender, EventArgs e)
        {
            ApagarCampoFerramenta();
        }

        private async void BtnCadastar_Clicked(object sender, EventArgs e)
        {
            bool resposta = await DisplayAlert("Cadastrar Ferramentas", "Deseja cadastrar as ferramentas listadas?", "Sim", "Não");

            if (resposta)
            {
                try
                {
                    foreach (Ferramenta ferramenta in lista)
                    {
                        Ferramenta cadastro = new Ferramenta();
                        cadastro.CadastrarFerramenta(ferramenta);
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", $"Erro ao cadastrar as ferramentas: Erro{ex.Message}", "OK");
                }

                await DisplayAlert("Sucesso", "Ferramentas cadastradas com sucesso", "OK");
                await Navigation.PopAsync();
            }
        }

        private void BtnRemoverItem_Clicked(object sender, EventArgs e)
        {
            var removerBtn = sender as MenuItem;
            var ferramenta = removerBtn.CommandParameter as Ferramenta;
            lista.Remove(ferramenta);

            listaFerramentas.ItemsSource = null;
            listaFerramentas.ItemsSource= lista;
        }

        private void ApagarCampoFerramenta()
        {
            txtNome.Text = "";
            codigoFerramenta = "";
            txtDescricao.Text = "";
        }

        private void PickerFuncionarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Funcionario funcionario = new Funcionario();
            funcionario = pickerFuncionarios.SelectedItem as Funcionario;
            funcionarioId = funcionario.Id;

            pickerFuncionarios.IsEnabled = false;

            //ToDo = não permitir que o supervisor pegue outro funcionario
        }

        
    }
}