Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim connectionString As String = "server=localhost;database=asp_db;user=root;pwd=admin"
        Dim serviceName As String = txtServiceName.Text
        Dim companyName As String = txtCompanyName.Text
        Dim serviceRate As Decimal = Decimal.Parse(txtServiceRate.Text)
        Dim servicesOffered As String = txtServiceOfferedName.Text
        Dim serviceType As String = service_type.SelectedValue
        Dim isActive As String = txtIsActive.SelectedValue
        Dim connection As MySqlConnection = New MySqlConnection(connectionString)

        Try
            connection.Open()
            Dim sql As String = "INSERT INTO exercise_asp (service_name, company_name, service_rate, services_offered, service_type, service_active) VALUES (@service_name, @company_name, @service_rate, @services_offered, @service_type, @service_active)"
            Dim command As MySqlCommand = New MySqlCommand(sql, connection)

            command.Parameters.AddWithValue("@service_name", serviceName)
            command.Parameters.AddWithValue("@company_name", companyName)
            command.Parameters.AddWithValue("@service_rate", serviceRate)
            command.Parameters.AddWithValue("@services_offered", servicesOffered)
            command.Parameters.AddWithValue("@service_type", serviceType)
            command.Parameters.AddWithValue("@service_active", isActive)
            Dim rowsAffected As Integer = command.ExecuteNonQuery()

            If rowsAffected > 0 Then
                vmsg.Text = "Data saved successfully!"
            Else
                vmsg.Text = "Error saving data!"
            End If
        Catch ex As Exception
            vmsg.Text = "Error: " & ex.Message
        Finally
            connection.Close()
        End Try
    End Sub

End Class