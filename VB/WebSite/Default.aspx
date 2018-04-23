<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxCallback" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxSplitter" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script language="javascript" type="text/javascript">
		function UpdateClientState(s, e) {
			setTimeout(function () {
				cbp.PerformCallback();                        
			}, 0);
		}        
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
	</div>
	<a target="_blank" href="<%=Me.ResolveUrl("~/Default.aspx")%>">Reopen page in a new window</a>    
	<dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="cbp">
		<PanelCollection>
			<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
				<dx:ASPxSplitter ID="ASPxSplitter1" runat="server" OnClientLayout="ASPxSplitter1_ClientLayout"
					ShowCollapseBackwardButton="True" ShowCollapseForwardButton="True" Height="455px" 
					Width="768px">
					<Panes>
						<dx:SplitterPane>
							<Panes>
								<dx:SplitterPane>
									<ContentCollection>
										<dx:SplitterContentControl ID="SplitterContentControl1" runat="server" SupportsDisabledAttribute="True">
											Pane 1 - 1
										</dx:SplitterContentControl>
									</ContentCollection>
								</dx:SplitterPane>
								<dx:SplitterPane>
									<ContentCollection>
										<dx:SplitterContentControl ID="SplitterContentControl2" runat="server" SupportsDisabledAttribute="True">
											Pane 1 - 2
										</dx:SplitterContentControl>
									</ContentCollection>
								</dx:SplitterPane>
								<dx:SplitterPane>
									<ContentCollection>
										<dx:SplitterContentControl ID="SplitterContentControl3" runat="server" SupportsDisabledAttribute="True">
											Pane 1- 3
										</dx:SplitterContentControl>
									</ContentCollection>
								</dx:SplitterPane>
							</Panes>
							<ContentCollection>
								<dx:SplitterContentControl ID="SplitterContentControl4" runat="server" SupportsDisabledAttribute="True">
								</dx:SplitterContentControl>
							</ContentCollection>
						</dx:SplitterPane>
						<dx:SplitterPane>
							<ContentCollection>
								<dx:SplitterContentControl ID="SplitterContentControl5" runat="server" SupportsDisabledAttribute="True">
									Pane 2</dx:SplitterContentControl>
							</ContentCollection>
						</dx:SplitterPane>
					</Panes>
					<ClientSideEvents PaneCollapsed="UpdateClientState" PaneExpanded="UpdateClientState"
						PaneResizeCompleted="UpdateClientState"/>
				</dx:ASPxSplitter>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxCallbackPanel>    
	</form>
</body>
</html>