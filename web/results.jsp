

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
       <link rel="stylesheet" type="text/css" href="style2.css" />
    </head>
    
        
    <%  
    int totalHours=Integer.parseInt(request.getParameter("workh"));
    double hourRate=Double.parseDouble(request.getParameter("payr")); 
    double pretaxDeduct=Double.parseDouble(request.getParameter("d1"));   
    double posttaxDeduct=Double.parseDouble(request.getParameter("d2"));
    double overtimeRate=hourRate*1.5;
    int overtimeHour=totalHours-40;
    double grossPay1=40.0*hourRate+overtimeRate*overtimeHour;
    double grossPay2=totalHours*hourRate;
    double pretaxPay1=grossPay1-pretaxDeduct;
    double pretaxPay2=grossPay2-pretaxDeduct;
    double netPay1=pretaxPay1-posttaxDeduct;
    double netPay2=pretaxPay2-posttaxDeduct;
    %>
    
    
    <body>
        <h1><font color='#FFFFFF'><u>Salary Information</u></h1>

        <table border="1" border-color='#FFFFFF'>
                <tbody>
                    <tr>
                        <td>Total Hours worked:</td>
                        <td><%= totalHours %></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Rate:</td>
                        <td><%=hourRate%></td>
                    </tr>
                    
                    <tr>
                        <td># Hours Overtime:</td>
                        <td><%
                            if(totalHours>40)
                            {
                                out.print(""+overtimeHour+"");

                            }
                            else
                            {
                                out.print(""+0+"");
                            }

                            %></td>
                    </tr> 
                    
                    <tr>
                        <td>Overtime Hourly Rate</td>
                        <td><%
                            if(totalHours>40)
                            {
                                out.print(""+overtimeRate+"");

                            }
                            else
                            {
                                out.print(""+0.0+"");
                            }
                            %> </td>
                    </tr>
                    
                    <tr>
                        <td>Gross Pay:</td>
                        <td><%
                            if(totalHours>40)
                            {
                                out.print(""+grossPay1+"");
                            }
                            else
                            {
                                 out.print(""+grossPay2+"");
                            }
                            %></td>
                    </tr>                    
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><%=pretaxDeduct%></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Pay:</td>
                        <td><%
                            if(totalHours>40)
                            {
                                out.print(""+pretaxPay1+"");
                            }
                            else
                            {
                                 out.print(""+pretaxPay2+"");
                            }
                            %></td>
                    </tr>        

                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><%=posttaxDeduct%></td>
                    </tr>
                    
                    <tr>
                        <td>Net Pay:</td>
                        <td><%
                            if(totalHours>40)
                            {
                                out.print(""+netPay1+"");
                            }
                            else
                            {
                                 out.print(""+netPay2+"");
                            }                      
                            %></td>
                    </tr>
                    

                </tbody>
            </table>   
            
        </form>
    </body>
</html>
