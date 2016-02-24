<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OpenAuthProviders.ascx.cs" Inherits="Account_OpenAuthProviders" %>

<fieldset class="open-auth-providers">
    <legend>Log in using another service</legend>
    
    <asp:ListView runat="server" ID="providerDetails" ItemType="Microsoft.AspNet.Membership.OpenAuth.ProviderDetails"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <button type="submit" name="provider" value="<%#: Item.ProviderName %>"
                title="Log in using your <%#: Item.ProviderDisplayName %> account.">
                <%#: Item.ProviderDisplayName %>
            </button>
        </ItemTemplate>
    
        <EmptyDataTemplate>
            <div class="message-info">
                <p>Tính năng đăng nhập bằng mạng xã hội sẽ được tích hợp vào ngày gần nhất. Xin lỗi vì sự phiền hà này!!!</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</fieldset>