using System;
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
    public partial class PageListaFerramentas : ContentPage
    {
        public PageListaFerramentas()
        {
            InitializeComponent();
        }

        public PageListaFerramentas(bool verificado)
        {
            InitializeComponent();
            List<Ferramenta> ferramentasVerificadas = new List<Ferramenta>();
        }
    }
}