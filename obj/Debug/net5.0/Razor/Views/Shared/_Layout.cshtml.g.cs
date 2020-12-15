#pragma checksum "D:\dotnet\capstoneASP\Views\Shared\_Layout.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cf2e631d7995dbfead8c26b23c8727fea5c7ccd7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__Layout), @"mvc.1.0.view", @"/Views/Shared/_Layout.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\dotnet\capstoneASP\Views\_ViewImports.cshtml"
using capstoneASP;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\dotnet\capstoneASP\Views\_ViewImports.cshtml"
using capstoneASP.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cf2e631d7995dbfead8c26b23c8727fea5c7ccd7", @"/Views/Shared/_Layout.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"911df6d30b1a63393f07a602b58b27235d4d6c4e", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared__Layout : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/lib/jquery/dist/jquery.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", "~/js/site.js", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.ScriptTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf2e631d7995dbfead8c26b23c8727fea5c7ccd74520", async() => {
                WriteLiteral("\r\n    <meta charset=\"utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n    <title>");
#nullable restore
#line 7 "D:\dotnet\capstoneASP\Views\Shared\_Layout.cshtml"
      Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
                WriteLiteral(@" - capstoneASP</title>

    <link href=""https://fonts.googleapis.com/css?family=Noto+Sans:400,700&display=swap"" rel=""stylesheet"">

    <link rel=""icon"" type=""image/png"" href=""images/Favicon.png"">

    <!-- Icons for touch devices apple, andriod etc. -->
    <link rel=""apple-touch-icon"" sizes=""128x128"" href=""favicon-128.png"" />
    <link rel=""apple-touch-icon"" sizes=""152x152"" href=""favicon-152.png"" />
    <link rel=""apple-touch-icon"" sizes=""167x167"" href=""favicon-167.png"" />
    <link rel=""apple-touch-icon"" sizes=""180x180"" href=""favicon-180.png"" />
    <link rel=""apple-touch-icon"" sizes=""196x196"" href=""favicon-196.png"" />

    <!-- Set a ""breakpoint"" at 768pixels for the ""desktop"" stylesheet, while 
            767pixels and LOWER get the ""mobile"" stylesheet. -->
    <link rel=""stylesheet"" type=""text/css"" href=""styles/desktop_styles.css"" media=""screen and (min-width: 768px)"" />
    <!-- ""Mobile"" devices we will consider to be 767 and UNDER -->
    <link rel=""stylesheet"" type=""text/css"" href=""s");
                WriteLiteral(@"tyles/mobile_styles.css"" media=""screen and (max-width: 767px)"" />
    <!-- print stylesheet -->
    <link rel=""stylesheet"" type=""text/css"" href=""styles/print.css"" media=""print"" />

    <script src=""old_ie.js""></script>
    <!--[if LTE IE 9]>
        <link rel=""stylesheet"" 
            type=""text/css"" 
            href=""styles/desktop_styles.css""
        /> 
        <style type=""text/css"">
        header, nav, main, section, footer{
            display: block;

        }
        footer div {
            display: inline-block;
        }
        footer a {
            padding: 40px;
        }
        </style>
    <![endif]-->

");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf2e631d7995dbfead8c26b23c8727fea5c7ccd77616", async() => {
                WriteLiteral(@"

    <div id=""wrapper"">

        <header>
            <span id=""logo""><strong>U</strong> Market</span>

            <div id=""utility_menu"">
                <a href=""#"">About Us</a>
                <a href=""#"">FAQ</a>
            </div>

            <div id=""call_to_action"">
                <span>Order Now</span><span><a href=""tel:1-888-123-1234"">1 (888) 123-1234</a></span>
            </div>
        </header>

        <nav>
            <a href=""#"" id=""menubutton"">
                <span id=""topbar""></span>
                <span id=""middlebar""></span>
                <span id=""bottombar""></span>
            </a>

            <ul id=""navlist"">
                <li><a class=""breadcrumb"" href=""#"">Home</a></li>
                <li><a href=""products.html"">Products</a></li>
                <li><a href=""promotion.html"">Promotion</a></li>
                <li><a href=""membership.html"">Membership</a></li>
                <li><a href=""support.html"">Support</a></li>
            </ul>
        ");
                WriteLiteral("</nav>\r\n\r\n\r\n        <main>\r\n            ");
#nullable restore
#line 85 "D:\dotnet\capstoneASP\Views\Shared\_Layout.cshtml"
       Write(RenderBody());

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n        </main>\r\n\r\n        <footer>\r\n            <div id=\"footer_upper\" class=\"footer_section\">\r\n                <div>\r\n                    <strong>COMPANY</strong>\r\n                    <a");
                BeginWriteAttribute("href", " href=\"", 3146, "\"", 3153, 0);
                EndWriteAttribute();
                WriteLiteral(@">About Us</a>
                    <strong>Tips</strong>
                    <a href=""#"">Healthy tips</a><br />
                </div>

                <div>
                    <strong>HELP</strong>
                    <a href=""#"">Help Center</a>
                </div>

                <div>
                    <strong>CUSTOMER SERVICE</strong>
                    <a");
                BeginWriteAttribute("href", " href=\"", 3535, "\"", 3542, 0);
                EndWriteAttribute();
                WriteLiteral(">Track Your Order</a>\r\n                    <a");
                BeginWriteAttribute("href", " href=\"", 3588, "\"", 3595, 0);
                EndWriteAttribute();
                WriteLiteral(">Payment Methods</a>\r\n                    <a");
                BeginWriteAttribute("href", " href=\"", 3640, "\"", 3647, 0);
                EndWriteAttribute();
                WriteLiteral(">Membership information</a>\r\n                    <a");
                BeginWriteAttribute("href", " href=\"", 3699, "\"", 3706, 0);
                EndWriteAttribute();
                WriteLiteral(@">Contact Us</a>
                </div>
                <div>
                    <strong>STAY CONNECTED</strong>
                    <a href=""https://www.facebook.com"" target=""_blank""><img src=""images/Facebook.png"" alt=""Facebook""
                            width=""25"" height=""25"" /></a>&ensp;
                    <a href=""https://www.instagram.com"" target=""_blank""><img src=""images/Instagram.png"" alt=""Instagram""
                            width=""25"" height=""25"" /></a>&ensp;
                    <a href=""https://www.pinterest.ca"" target=""_blank""><img src=""images/Pinterest.png"" alt=""Pinterest""
                            width=""25"" height=""25"" /></a>&ensp;
                    <a href=""https://twitter.com/?lang=en"" target=""_blank""><img src=""images/Twitter.png"" alt=""Twitter""
                            width=""25"" height=""25"" /></a>
                    <strong>FIND OUR STORE</strong>
                    <p><a href=""#""><img src=""images/map.png"" alt=""map"" width=""25"" height=""25"" />515 Portage Ave</a></p>
");
                WriteLiteral(@"                </div>

            </div>
            <hr />
            <div class=""footer_section"">
                <div id=""footer_copyright"" class=""copyright"">&copy;U Market Inc.</div>
                <div id=""footer_help""><a href=""#"">&gt;Help</a></div>
                <div id=""footer_term""><a href=""#"">&gt;Terms of Use</a></div>
                <div id=""footer_policy""><a href=""#"">&gt;Privacy Policy</a></div>
            </div>
        </footer>
    </div>
    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf2e631d7995dbfead8c26b23c8727fea5c7ccd712329", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf2e631d7995dbfead8c26b23c8727fea5c7ccd713429", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf2e631d7995dbfead8c26b23c8727fea5c7ccd714529", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.ScriptTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper.Src = (string)__tagHelperAttribute_2.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
#nullable restore
#line 135 "D:\dotnet\capstoneASP\Views\Shared\_Layout.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper.AppendVersion = true;

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-append-version", __Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper.AppendVersion, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n    ");
#nullable restore
#line 136 "D:\dotnet\capstoneASP\Views\Shared\_Layout.cshtml"
Write(await RenderSectionAsync("Scripts", required: false));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n</html>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
