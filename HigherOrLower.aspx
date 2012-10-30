﻿<!--
$Header: /var/lib/cvsd/var/lib/cvsd/VulnApp/HigherOrLower.aspx,v 1.2 2012-10-30 17:03:10 timb Exp $

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HigherOrLower.aspx.cs" Inherits="VulnApp.HigherOrLower" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>HigherOrLower</title>
	</head>
	<body>
		<form id="Form2" method="post" runat="server">
			<p><asp:label id="HigherOrLowerLabel" runat="server" Font-Size="XX-Large">Higher Or Lower</asp:label></p>
			<p><!-- This makes use of VulnService.asmx at the backend, we should set ACLs so it can't be called by external users --><asp:Label id="ScoreLabel" runat="server"></asp:Label></p>
			<p><asp:label id="NumberLabel" runat="server"></asp:label></p>
			<p><asp:button style="Z-INDEX: 0" id="HigherButton" runat="server" Text="Higher" 
                    onclick="HigherButton_Click"></asp:button><asp:button id="LowerButton" 
                    runat="server" Text="Lower" onclick="LowerButton_Click"></asp:button></p>
		</form>
		<p><asp:HyperLink id="BackToMainHyperLink" runat="server" Height="16px" NavigateUrl="Main.aspx">Back To Main</asp:HyperLink></p>
	</body>
</html>
