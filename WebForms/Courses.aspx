<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="WebForms.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Course</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" SortExpression="TeacherID" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolDataConnectionString5 %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Credits] = @original_Credits) OR ([Credits] IS NULL AND @original_Credits IS NULL))" InsertCommand="INSERT INTO [Courses] ([CourseName], [TeacherID], [Credits]) VALUES (@CourseName, @TeacherID, @Credits)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolDataConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [TeacherID] = @TeacherID, [Credits] = @Credits WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Credits] = @original_Credits) OR ([Credits] IS NULL AND @original_Credits IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CourseID" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="Int32" />
            <asp:Parameter Name="original_Credits" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="TeacherID" Type="Int32" />
            <asp:Parameter Name="Credits" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="TeacherID" Type="Int32" />
            <asp:Parameter Name="Credits" Type="Int32" />
            <asp:Parameter Name="original_CourseID" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="Int32" />
            <asp:Parameter Name="original_Credits" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
