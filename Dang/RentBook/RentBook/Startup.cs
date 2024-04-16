using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RentBook.Startup))]
namespace RentBook
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
