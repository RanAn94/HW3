
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1><font color='#FFFFFF'><u>Simple Salary Calculator</u></h1>
        <form name="salaryCalculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="workh" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="payr" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="d1" value="" size="50" required></td>
                    </tr> 
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="d2" value="" size="50"required></td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">            
            
        </form>
    </body>
</html>
