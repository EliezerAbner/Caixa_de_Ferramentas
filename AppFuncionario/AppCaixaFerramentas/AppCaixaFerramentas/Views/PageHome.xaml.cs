﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppCaixaFerramentas.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppCaixaFerramentas.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageHome : ContentPage
    {
		private int funcionarioId = 4;
        public PageHome(string emailObtido)
        {
            InitializeComponent();

			Funcionario funcionario = new Funcionario();
			funcionario = funcionario.buscarFuncionario(emailObtido);
			
			funcionarioId = funcionario.Id;
			lblNome.Text = $"{lblNome.Text} {funcionario.NomeFuncionario}";
        }

		private void btnListaFerramentas_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new PageFerramentas(funcionarioId));
		}

		private void btnVerificacao_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new PageVerificacao(funcionarioId));
        }

		private void btnSair_Clicked(object sender, EventArgs e)
		{
			try
			{
				System.Diagnostics.Process.GetCurrentProcess().Kill();
			}
			catch (Exception ex)
			{
				DisplayAlert("Erro", "" + ex.Message + "", "OK");
			}
		}

		private async void btnLogout_Clicked(object sender, EventArgs e)
		{
			var resposta = await DisplayAlert("Confirmar Logout", "Tem certeza que deseja sair?", "Sim", "Não");

			if (resposta)
			{
				var pagAnterior = Navigation.NavigationStack.LastOrDefault();
				await Navigation.PushAsync(new PageLogin());
				Navigation.RemovePage(pagAnterior);
			}
		}
	}
}