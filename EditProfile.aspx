﻿<!--
$Header: /var/lib/cvsd/var/lib/cvsd/VulnApp/EditProfile.aspx,v 1.1.1.1 2012-10-30 16:46:29 timb Exp $

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.
* Neither the name of the Nth Dimension nor the names of its contributors may
be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

(c) Tim Brown, 2011
<mailto:timb@nth-dimension.org.uk>
<http://www.nth-dimension.org.uk/> / <http://www.machine.org.uk/>
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" ValidateRequest="false" Inherits="VulnApp.EditProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>EditProfile</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <asp:label style="Z-INDEX: 0" id="IDLabel" runat="server" Visible="False"></asp:label>
            <p><asp:Image id="ProfileImage" runat="server"></asp:Image></p>
			<p><asp:label id="UsernameLabel" runat="server">Username</asp:label><asp:textbox id="UsernameTextBox" runat="server"></asp:textbox></p>
			<p><asp:label style="Z-INDEX: 0" id="PasswordLabel" runat="server">Password</asp:label><asp:textbox id="PasswordTextBox" runat="server"></asp:textbox></p>
			<p><asp:label id="NameLabel" runat="server">Name</asp:label><asp:textbox id="NameTextBox" runat="server"></asp:textbox></p>
			<p><input type="file" id="ProfileImageFile" runat="server" /></p>
			<p><asp:button style="Z-INDEX: 0" id="SaveButton" runat="server" Height="32px" 
                    Width="40px" Text="Save" onclick="SaveButton_Click"></asp:button></p>
        </form>
        <p><asp:HyperLink style="Z-INDEX: 0" id="BackToMainHyperLink" runat="server" NavigateUrl="Main.aspx" Height="16px">Back To Main</asp:HyperLink></p>
    </body>
</html>
