<%
    String pass = session.getAttribute("OTP").toString();
    String otp = request.getParameter("otp");
    if(pass.equals(otp))
    {
        response.sendRedirect("index1.jsp");
    }
    else
    {
        response.sendRedirect("../clientjsp.jsp");
    }
    %>