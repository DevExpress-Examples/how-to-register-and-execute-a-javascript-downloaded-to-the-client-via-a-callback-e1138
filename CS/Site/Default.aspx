<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Height="71px"
                Width="255px" EnableCallBacks="True" EnableViewState="False">
                <TabPages>
                    <dxtc:TabPage Text="Sample description">
                        <ContentCollection>
                            <dxw:ContentControl runat="server">
                                This ASPxPageControl's EnableCallbacks property is set to true. 
                                The second tab page's content contains a JavaScript block, which 
                                is downloaded via a callback when the tab page becomes active for 
                                the first time. Pay attention to an identifier defined for the 
                                script block.
                            </dxw:ContentControl>
                        </ContentCollection>
                    </dxtc:TabPage>
                    <dxtc:TabPage Text="Page with script block">
                        <ContentCollection>
                            <dxw:ContentControl runat="server">
                                <script id="dxss_showDate">
                                function OnShowTimeButtonClick(s, e) {
                                    alert(GetCurrentTimeString());
                                }
                                function GetCurrentTimeString() {
                                    var now = new Date();
                                    var hours = now.getHours();
                                    var minutes = now.getMinutes();
                                    var seconds = now.getSeconds();

                                    minutes = checkTime(minutes);
                                    seconds = checkTime(seconds);
                                    return hours + ":" + minutes + ":" + seconds;
                                }
                                
                                function checkTime(i) {
                                   return i < 10 ? "0" + i : i;
                                }
                                </script>
                                <dxe:ASPxButton ID="btnShowTime" runat="server" AutoPostBack="False" 
                                    Text="Show current time">
                                    <ClientSideEvents Click="OnShowTimeButtonClick" />
                                </dxe:ASPxButton>
                            </dxw:ContentControl>
                        </ContentCollection>
                    </dxtc:TabPage>
                </TabPages>
            </dxtc:ASPxPageControl>
        </div>
    </form>
</body>
</html>
