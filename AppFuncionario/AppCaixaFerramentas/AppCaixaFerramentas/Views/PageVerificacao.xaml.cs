using AppCaixaFerramentas.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageVerificacao : ContentPage
    {
        private int funcionarioId, countFerramentas;
        private List<Ferramenta> verificados, nVerificados;

        public PageVerificacao(int idObtido)
        {
            InitializeComponent();

            Ferramenta ferramenta = new Ferramenta();
            nVerificados = ferramenta.listaFerramentas(idObtido);
            listaNVerificada.ItemsSource = nVerificados;
            countFerramentas = nVerificados.Count;

            lblFerramNnVerif.Text = nVerificados.Count.ToString();
            lblFerramVerif.Text = Convert.ToString(0);

            verificados = new List<Ferramenta>();
            funcionarioId = idObtido;
        }

        private void btnVerificar_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ScannerPage());

            MessagingCenter.Subscribe<ScannerPage, string>(this, "scannerResult", (view, message) =>
            {
                Ferramenta ferram = nVerificados.Find(x => x.Codigo == message) as Ferramenta;

                if (ferram != null)
                {
                    verificados.Add(ferram);
                    nVerificados.Remove(ferram);


                    listaNVerificada.ItemsSource = null;
                    listaNVerificada.ItemsSource = nVerificados;

                    listaVerificada.ItemsSource = null;
                    listaVerificada.ItemsSource = verificados;

                    lblFerramNnVerif.Text = nVerificados.Count.ToString();
                    lblFerramVerif.Text = verificados.Count.ToString();

                    MessagingCenter.Unsubscribe<ScannerPage, string>(this, "scannerResult");
                    
                }
                else
                {
                    Ferramenta fVerificada = verificados.Find(x => x.Codigo == message) as Ferramenta;
                    
                    if(fVerificada != null)
                    {
                        DisplayAlert("Ferramenta já verificada", $"A ferramenta {fVerificada.NomeFerramenta} já foi verificada", "OK");
                    }
                    else
                    {
                        DisplayAlert("Código Errado", "A ferramenta escaneada não pertence a sua caixa de ferramentas. Tente novamente ou notifique seu supervisor.", "OK");
                        MessagingCenter.Unsubscribe<ScannerPage, string>(this, "scannerResult");
                    }
                }
            });
        }

        private async void btnFinalizar_Clicked(object sender, EventArgs e)
        {
            Verificacao verificar = new Verificacao();

            if (verificados.Count == countFerramentas)
            {
                try
                {
                    foreach (Ferramenta f in verificados)
                    {
                        verificar.FazerVerificacao(f.Id, funcionarioId);
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", $"Não estamos conseguindo realixar a verificação no momento. Erro: {ex.Message}", "OK");
                }
            }
            else
            {
                bool resp = await DisplayAlert("Aviso", "Ainda há ferramentas não verificadas. Deseja finalizar a verificação mesmo assim?", "Sim","Não");
                if (resp)
                {
                    try
                    {
                        foreach (Ferramenta f in verificados)
                        {
                            verificar.FazerVerificacao(f.Id, funcionarioId);
                        }
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Erro", $"Não estamos conseguindo realixar a verificação no momento. Erro: {ex.Message}", "OK");
                    }
                }
            }

            await Navigation.PopAsync();
        }
    }
}

/*
 * This isn't a web-specific exception, I've also encountered it in desktop-app development. 
 * In short, what's happening is that the thread receiving this exception is running some asynchronous code (via Invoke(), e.g.) and that code that's being run asynchronously is exploding with an exception. 
 * This target invocation exception is the aftermath of that failure.
*/