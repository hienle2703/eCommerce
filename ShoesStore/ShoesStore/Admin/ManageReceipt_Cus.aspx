﻿<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageReceipt_Cus.aspx.cs" Inherits="ShoesStore.Admin.ManageReceipt_Cus" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="btn btn-lg custom_bar">Danh sách hóa đơn bán hàng</div>
    <div class="row">
        <div class="col-12 table-responsive">
            <asp:GridView ID="gvRcptBuy" ShowFooter="True" runat="server" AutoGeneratedColumns="false" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" BorderStyle="None" AutoGenerateColumns="False" AllowPaging="True" Style="margin-top: 0px">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("RcptBuyId") %>' CommandName="EditRow" ForeColor="#8C4510" runat="server">Sửa</asp:LinkButton>
                            <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("RcptBuyId") %>' CommandName="DeleteRow" ForeColor="#8C4510" runat="server" CausesValidation="false">Xóa</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("RcptBuyId") %>' CommandName="UpdateRow" ForeColor="#8C4510" runat="server">Cập nhật</asp:LinkButton>
                            <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("RcptBuyId") %>' CommandName="CancelUpdate" ForeColor="#8C4510" runat="server" CausesValidation="false">Hủy</asp:LinkButton>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" ValidationGroup="Insert" runat="server" CommandName="InsertRow" ForeColor="#8C4510">Thêm</asp:LinkButton>
                        </FooterTemplate>
                        <FooterStyle Wrap="False"/>
                        <HeaderStyle Wrap="False"/>
                        <ItemStyle Wrap="False"/>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mã hóa đơn">
                        <ItemTemplate>
                            <%# Eval("RcptBuyId") %>
                        </ItemTemplate>
                        <FooterStyle Wrap="False"/>
                        <HeaderStyle Wrap="False"/>
                        <ItemStyle Wrap="False"/>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ngày thêm">
                        <ItemTemplate>
                            <%# Eval("DateAdd") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="EditDateAdd" Text='<%# Bind("DateAdd") %>'/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" type="date" ID="InsertDateAdd" Text='<%# Bind("DateAdd") %>'/>
                            <asp:RequiredFieldValidator ID="rfvEditDateAdd"
                                                        runat="server"
                                                        ErrorMessage="Chưa nhập địa chỉ"
                                                        ControlToValidate="InsertDateAdd"
                                                        Text="*" ForeColor="Red" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ngày sửa">
                        <ItemTemplate>
                            <%# Eval("DateEdit") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="EditDateEdit" Text='<%# Bind("DateEdit") %>'/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" type="date" ID="InsertDateEdit" Text='<%# Bind("DateEdit") %>'/>
                            <asp:RequiredFieldValidator ID="rfvEditDateEdit"
                                                        runat="server"
                                                        ErrorMessage="Chưa nhập số điện thoại"
                                                        ControlToValidate="InsertDateEdit"
                                                        Text="*" ForeColor="Red" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Người thêm">
                        <ItemTemplate>
                            <%# Eval("UsrAdd") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="EditUsrAdd" Text='<%# Bind("UsrAdd") %>'/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="InsertUsrAdd" Text=' <%# Bind("UsrAdd") %>'/>
                            <asp:RequiredFieldValidator ID="rfvEditUsrAdd"
                                                        runat="server"
                                                        ErrorMessage="Chưa nhập tài khoản"
                                                        ControlToValidate="InsertUsrAdd"
                                                        Text="*" ForeColor="Red" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Người chỉnh sửa">
                        <ItemTemplate>
                            <%# Eval("UsrEdit") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="EditUsrEdit" Text='<%# Bind("UsrEdit") %>'/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="InsertUsrEdit" Text=' <%# Bind("UsrEdit") %>'/>
                            <asp:RequiredFieldValidator ID="rfvEditUsrEdit"
                                                        runat="server"
                                                        ErrorMessage="Chưa nhập tên người bán"
                                                        ControlToValidate="InsertUsrEdit"
                                                        Text="*" ForeColor="Red" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"/>
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"/>
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center"/>
                <RowStyle BackColor="White" ForeColor="#330099"/>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"/>
                <SortedAscendingCellStyle BackColor="#FEFCEB"/>
                <SortedAscendingHeaderStyle BackColor="#AF0101"/>
                <SortedDescendingCellStyle BackColor="#F6F0C0"/>
                <SortedDescendingHeaderStyle BackColor="#7E0000"/>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationRcptBuyId" ValidationGroup="Insert"
                                   ForeColor="Red" runat="server"/>
        </div>
    </div>
</asp:Content>