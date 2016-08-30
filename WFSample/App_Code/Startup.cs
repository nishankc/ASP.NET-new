using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WFSample.Startup))]
namespace WFSample
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
