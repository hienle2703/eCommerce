﻿<%@ Page Language="C#" Title="Quản lý người mua" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageService.aspx.cs" Inherits="ShoesStore.Admin.Manage_Services" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   Quản lý gói dịch vụ
   <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
       <AlternatingRowStyle BackColor="PaleGoldenrod" />
       <Columns>
           <asp:TemplateField> 
                <ItemTemplate>
                    <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("SubId") %>' CommandName="EditRow" ForeColor="#8C4510" runat="server">Sửa</asp:LinkButton>
                    <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("SubId") %>' CommandName="DeleteRow" ForeColor="#8C4510" runat="server" CausesValidation="false">Xóa</asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("SubId") %>' CommandName="UpdateRow" ForeColor="#8C4510" runat="server">Cập nhật</asp:LinkButton>
                    <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("SubId") %>' CommandName="CancelUpdate" ForeColor="#8C4510" runat="server" CausesValidation="false">Hủy</asp:LinkButton>
                </EditItemTemplate> 
            </asp:TemplateField>
           <asp:TemplateField HeaderText="SubId" InsertVisible="true" SortExpression="SubId"> 
                <ItemTemplate>
                    <asp:Label ID="lb1" runat="server" Text='<%# Eval("SubId") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lb1" runat="server" Text='<%# Bind("SubId") %>'></asp:Label>               
                </EditItemTemplate>
              <%-- <FooterTemplate>
                    <asp:LinkButton ID="lbInsert" ValidationGroup="server" runat="server">Thêm</asp:LinkButton>

               </FooterTemplate>--%>
            </asp:TemplateField>
        </Columns>
       <FooterStyle BackColor="Tan" />
       <HeaderStyle BackColor="Tan" Font-Bold="True" />
       <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
       <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
       <SortedAscendingCellStyle BackColor="#FAFAE7" />
       <SortedAscendingHeaderStyle BackColor="#DAC09E" />
       <SortedDescendingCellStyle BackColor="#E1DB9C" />
       <SortedDescendingHeaderStyle BackColor="#C2A47B" />
   </asp:GridView>
</asp:Content>
