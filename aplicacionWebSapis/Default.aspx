<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aplicacionWebSapis._Default" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="TextBoxEst" runat="server"></asp:TextBox>
    <asp:Button ID="btnConsultar" runat="server" Text="Button"  OnClick="btnConsultar_Click"/>

    <div style="margin-top: 10px; border: 1px solid black">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" 
        HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" 
        InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" 
        PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" 
        PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" 
        SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" 
        ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" 
        ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" 
        ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" 
        ToolBarItemPressedBorderWidth="1px" 
        ToolBarItemPressedHoverBackColor="153, 187, 226" Height="1007px" Width="100%">
        <LocalReport ReportPath="Reportes\Report2.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="data" Name="DataSetListPregunta" />
            </DataSources>
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSourceEst" Name="DataSetAsignacion" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

        <asp:ObjectDataSource 
           id="data"
            runat="server" 
            OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetDataListaPregunta" 
            TypeName="aplicacionWebSapis.lista_preguntaTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:Parameter Name="correo_est" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>

        <asp:ObjectDataSource ID="ObjectDataSourceEst" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAsignacion" TypeName="aplicacionWebSapis.dbAsignacionTableAdapters.asignacionTableAdapter">
            <SelectParameters>
                <asp:Parameter Name="correo_est" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
   </div>
</asp:Content>
