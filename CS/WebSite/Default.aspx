<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableCallBacks="True" EnableViewState="False" Width="285">
                <TabPages>
                    <dx:TabPage Text="Sample description">
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                This ASPxPageControl's EnableCallbacks property is set to true. 
                                The second tab page's content contains a JavaScript block, which 
                                is downloaded via a callback when the tab page becomes active for 
                                the first time. Pay attention to an identifier defined for the 
                                script block.
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Text="Page with script block">
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <script type="text/javascript" id="dxss_showDate">
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
                                <dx:ASPxButton ID="btnShowTime" runat="server" AutoPostBack="False"
                                    Text="Show current time">
                                    <ClientSideEvents Click="OnShowTimeButtonClick" />
                                </dx:ASPxButton>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                </TabPages>
            </dx:ASPxPageControl>
        </div>
    </form>
</body>
</html>
