<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regjistrimi.aspx.cs" Inherits="Regjistrimi" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 64px;
        }
        .auto-style2
        {
            width: 142px;
        }
        .auto-style3
        {
            width: 61px;
        }
    </style>
</head>
<body style="background-image: url('/MasterPagesCS/images/wood-bg.jpg');">
   <form id="form1" runat="server" >   
<table align="center" style="background-image: url('images/patterns-damask_00377905.png'); background-color: #FFFFFF;">
<tr>
<td class="auto-style3">&nbsp;</td>
<td align="right" class="auto-style1" >

<%--<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>--%>
</td>
<td align="center" class="auto-style2">
<b>Regjistrimi</b> <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
</td>
</tr>
<tr>
<td class="auto-style3">&nbsp;</td>
<td align="right" class="auto-style1" >
<asp:Label ID="lbluser" runat="server" Text="Username" meta:resourcekey="lbluserResource1"></asp:Label>
</td>
<td class="auto-style2">
<asp:TextBox ID="txtuser" runat="server" OnTextChanged="txtuser_TextChanged" AutoPostBack="True" meta:resourcekey="txtuserResource1"></asp:TextBox>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErruser" runat="server" ForeColor="#CC0000" meta:resourcekey="lblErruserResource1"></asp:Label></span>
    <td><asp:Label ID="Label2" runat="server" ForeColor="Red" meta:resourcekey="Label2Resource1"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser" ErrorMessage="Fusha eshte e obliguar*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator2Resource1"></asp:RequiredFieldValidator>
        </td>
</td>
</tr>
<tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1" >
<asp:Label ID="lblpwd" runat="server" Text="Fjalekalimi" meta:resourcekey="lblpwdResource1"></asp:Label>
</td>
<td class="auto-style2">
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password" meta:resourcekey="txtpwdResource1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="Fusha eshte e obliguar*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator1Resource1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcnmpwd" 
            ErrorMessage="Fjalekalimi duhet ti kete se paku 6 karaktere*" ValidationExpression="^[\s\S]{6,}$" Display="Dynamic" ForeColor="Red" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1">
<asp:Label ID="lblfname" runat="server" Text="Emri" meta:resourcekey="lblfnameResource1"></asp:Label>
</td>
<td class="auto-style2">
<asp:TextBox ID="txtfname" runat="server" meta:resourcekey="txtfnameResource1"></asp:TextBox>
    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtfname" 
            ErrorMessage="This field must contain only letters*" ValidationExpression="[a-zA-Z]{2,40}" Display="Dynamic" ForeColor="Red" meta:resourcekey="RegularExpressionValidator4Resource1"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfname" 
            ErrorMessage="Fusha eshte e obliguar*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator4Resource1"></asp:RequiredFieldValidator>
        </td>
</td>
</tr>
<tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1">
<asp:Label ID="lbllname" runat="server" Text="Mbiemri" meta:resourcekey="lbllnameResource1"></asp:Label>
</td>
<td class="auto-style2">
<asp:TextBox ID="txtlname" runat="server" meta:resourcekey="txtlnameResource1"></asp:TextBox>
    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlname" 
            ErrorMessage="This field must contain only letters*" ValidationExpression="[a-zA-Z]{2,40}" Display="Dynamic" ForeColor="Red" meta:resourcekey="RegularExpressionValidator2Resource1"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlname" 
            ErrorMessage="Emri kerkohet*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator5Resource1"></asp:RequiredFieldValidator>
        </td>
</td>
</tr>
    <tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1" >
<asp:Label ID="lblpwd0" runat="server" Text="Konfirmo fjalekalimin" meta:resourcekey="lblpwd0Resource1"></asp:Label>

</td>
<td class="auto-style2">
<asp:TextBox ID="txtcnmpwd" runat="server" TextMode="Password" meta:resourcekey="txtcnmpwdResource1"></asp:TextBox>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrfjalkalimi" runat="server" ForeColor="#CC0000" meta:resourcekey="lblErrfjalkalimiResource1"></asp:Label></span>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcnmpwd" ErrorMessage="Fusha eshte e obliguar*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator8Resource1"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcnmpwd" ControlToValidate="txtpwd" ErrorMessage="Fjalekalimi nuk perputhet!" Display="Dynamic" ForeColor="Red" meta:resourcekey="CompareValidator1Resource1"></asp:CompareValidator>
</td>
    </tr>
    <tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1" >
<asp:Label ID="lblpwd2" runat="server" Text="E-mail" meta:resourcekey="lblpwd2Resource1"></asp:Label>
        </td>
<td class="auto-style2">
<asp:TextBox ID="txtemail" runat="server" meta:resourcekey="txtemailResource1" ></asp:TextBox>
    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email is required*" ForeColor="Red" meta:resourcekey="RequiredFieldValidator9Resource1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Email nuk eshte shenuar mire*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>
        </td>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErremail" runat="server" ForeColor="Yellow" meta:resourcekey="lblErremailResource1"></asp:Label></span>

        </td>
    </tr>
    <tr>
<td class="auto-style3">&nbsp;</td>
<td align="right" class="auto-style1" >
    Gjinia</td> <td>
        <asp:RadioButtonList ID="Genre" runat="server" Height="43px" Width="143px" meta:resourcekey="GenreResource1">
            <asp:ListItem Value="M" meta:resourcekey="ListItemResource1">Mashkull</asp:ListItem>
            <asp:ListItem Value="F" meta:resourcekey="ListItemResource2">Femer</asp:ListItem>
        </asp:RadioButtonList>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Zgjedhni njeren!" ControlToValidate="Genre" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"></asp:RequiredFieldValidator>
        </td>
		</td>
    </tr>
    <tr>
<td class="auto-style3"></td>
<td align="right" class="auto-style1" >
    Datelindja</td>
<td class="auto-style2">
<asp:TextBox ID="Birthdate" runat="server" meta:resourcekey="BirthdateResource1" ></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="(mm/dd/yyyy)" meta:resourcekey="Label3Resource1"></asp:Label>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Birthdate" ErrorMessage="Format i gabuar*" MaximumValue="1/1/2100" MinimumValue="12/31/1950" Type="Date" Display="Dynamic" ForeColor="Red" meta:resourcekey="RangeValidator1Resource1"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
<td class="auto-style3">   
<table align="center" style="background-image: url('images/White-Stripe-Pattern.jpg'); ">
    <tr>
<td class="auto-style2">
    <rsv:CaptchaControl ID="Captcha1" runat="server" BackColor="White" CaptchaChars="ABCDENGWERTYU" CaptchaHeight="60" CaptchaMaxTimeout="240" CaptchaMinTimeout="5" CaptchaWidth="200" FontColor="Red" ForeColor="#00FFCC" LineColor="Black" meta:resourcekey="Captcha1Resource1" NoiseColor="Black" />
        </td>
    </tr>
</table>

        </td>
<td align="right" class="auto-style1" >
<asp:Label ID="lblpwd1" runat="server" Text="Captcha" meta:resourcekey="lblpwd1Resource1"></asp:Label>
        </td>
<td class="auto-style2">
<asp:TextBox ID="txtcaptcha" runat="server" meta:resourcekey="txtcaptchaResource1"  ></asp:TextBox>
    <td><asp:Label ID="Label1" runat="server" ForeColor="Red" meta:resourcekey="Label1Resource1"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcaptcha" ErrorMessage="Fusha eshte e obliguar*" Display="Dynamic" ForeColor="Red" meta:resourcekey="RequiredFieldValidator3Resource1"></asp:RequiredFieldValidator>
        </td>
    

        </td>
    </tr>
<tr>
<td class="auto-style3">
    &nbsp;</td>

<tr>
<td class="auto-style3"></td>
<td class="auto-style1">
   
    &nbsp;</td>

<td align="left" class="auto-style2" ><asp:Button ID="btnsubmit" runat="server" Text="Ruaj" 
onclick="btnsubmit_Click" BackColor="#CCCCCC" BorderStyle="Ridge" meta:resourcekey="btnsubmitResource1" />
&nbsp;<asp:Button ID="btnanulo" runat="server" OnClick="btnanulo_Click" Text="Anulo" BorderColor="#999999" BorderStyle="Ridge" meta:resourcekey="btnanuloResource1" />
</td>
</tr>

    <td>
        &nbsp;</td>
<td class="auto-style3"></td>
<td class="auto-style1">
    &nbsp;</td>
<td class="auto-style2">
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrcaptcha" runat="server" ForeColor="#CC0000" meta:resourcekey="lblErrcaptchaResource1"></asp:Label></span>
</td>
</tr>
</table>

       <p>
           &nbsp;</p>

</form> 
</body>
</html>
