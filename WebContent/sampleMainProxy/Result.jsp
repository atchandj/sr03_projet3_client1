<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleMainProxyid" scope="session" class="DefaultNamespace.MainProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleMainProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleMainProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleMainProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        DefaultNamespace.Main getMain10mtemp = sampleMainProxyid.getMain();
if(getMain10mtemp == null){
%>
<%=getMain10mtemp %>
<%
}else{
        if(getMain10mtemp!= null){
        String tempreturnp11 = getMain10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String oldCategoryName_1id=  request.getParameter("oldCategoryName16");
            java.lang.String oldCategoryName_1idTemp = null;
        if(!oldCategoryName_1id.equals("")){
         oldCategoryName_1idTemp  = oldCategoryName_1id;
        }
        String newCategoryName_2id=  request.getParameter("newCategoryName18");
            java.lang.String newCategoryName_2idTemp = null;
        if(!newCategoryName_2id.equals("")){
         newCategoryName_2idTemp  = newCategoryName_2id;
        }
        sampleMainProxyid.updateCategory(oldCategoryName_1idTemp,newCategoryName_2idTemp);
break;
case 20:
        gotMethod = true;
        String categoryName_3id=  request.getParameter("categoryName23");
            java.lang.String categoryName_3idTemp = null;
        if(!categoryName_3id.equals("")){
         categoryName_3idTemp  = categoryName_3id;
        }
        sampleMainProxyid.addCategory(categoryName_3idTemp);
break;
case 25:
        gotMethod = true;
        String yearBook_4id=  request.getParameter("yearBook28");
        int yearBook_4idTemp  = Integer.parseInt(yearBook_4id);
        String oldAdName_5id=  request.getParameter("oldAdName30");
            java.lang.String oldAdName_5idTemp = null;
        if(!oldAdName_5id.equals("")){
         oldAdName_5idTemp  = oldAdName_5id;
        }
        String oldStreet_6id=  request.getParameter("oldStreet32");
            java.lang.String oldStreet_6idTemp = null;
        if(!oldStreet_6id.equals("")){
         oldStreet_6idTemp  = oldStreet_6id;
        }
        String oldTown_7id=  request.getParameter("oldTown34");
            java.lang.String oldTown_7idTemp = null;
        if(!oldTown_7id.equals("")){
         oldTown_7idTemp  = oldTown_7id;
        }
        String oldPostCode_8id=  request.getParameter("oldPostCode36");
            java.lang.String oldPostCode_8idTemp = null;
        if(!oldPostCode_8id.equals("")){
         oldPostCode_8idTemp  = oldPostCode_8id;
        }
        String oldCategory_9id=  request.getParameter("oldCategory38");
            java.lang.String oldCategory_9idTemp = null;
        if(!oldCategory_9id.equals("")){
         oldCategory_9idTemp  = oldCategory_9id;
        }
        String newAdName_10id=  request.getParameter("newAdName40");
            java.lang.String newAdName_10idTemp = null;
        if(!newAdName_10id.equals("")){
         newAdName_10idTemp  = newAdName_10id;
        }
        String newPhone_11id=  request.getParameter("newPhone42");
            java.lang.String newPhone_11idTemp = null;
        if(!newPhone_11id.equals("")){
         newPhone_11idTemp  = newPhone_11id;
        }
        String newStreet_12id=  request.getParameter("newStreet44");
            java.lang.String newStreet_12idTemp = null;
        if(!newStreet_12id.equals("")){
         newStreet_12idTemp  = newStreet_12id;
        }
        String newTown_13id=  request.getParameter("newTown46");
            java.lang.String newTown_13idTemp = null;
        if(!newTown_13id.equals("")){
         newTown_13idTemp  = newTown_13id;
        }
        String newPostCode_14id=  request.getParameter("newPostCode48");
            java.lang.String newPostCode_14idTemp = null;
        if(!newPostCode_14id.equals("")){
         newPostCode_14idTemp  = newPostCode_14id;
        }
        String newCategory_15id=  request.getParameter("newCategory50");
            java.lang.String newCategory_15idTemp = null;
        if(!newCategory_15id.equals("")){
         newCategory_15idTemp  = newCategory_15id;
        }
        sampleMainProxyid.modifyAd(yearBook_4idTemp,oldAdName_5idTemp,oldStreet_6idTemp,oldTown_7idTemp,oldPostCode_8idTemp,oldCategory_9idTemp,newAdName_10idTemp,newPhone_11idTemp,newStreet_12idTemp,newTown_13idTemp,newPostCode_14idTemp,newCategory_15idTemp);
break;
case 52:
        gotMethod = true;
        String category_16id=  request.getParameter("category55");
            java.lang.String category_16idTemp = null;
        if(!category_16id.equals("")){
         category_16idTemp  = category_16id;
        }
        sampleMainProxyid.dropCategory(category_16idTemp);
break;
case 57:
        gotMethod = true;
        String yearBook_17id=  request.getParameter("yearBook60");
        int yearBook_17idTemp  = Integer.parseInt(yearBook_17id);
        String adName_18id=  request.getParameter("adName62");
            java.lang.String adName_18idTemp = null;
        if(!adName_18id.equals("")){
         adName_18idTemp  = adName_18id;
        }
        sampleMainProxyid.dropAd(yearBook_17idTemp,adName_18idTemp);
break;
case 64:
        gotMethod = true;
        String yearBook_19id=  request.getParameter("yearBook67");
        int yearBook_19idTemp  = Integer.parseInt(yearBook_19id);
        java.lang.String getAdsNames64mtemp = sampleMainProxyid.getAdsNames(yearBook_19idTemp);
if(getAdsNames64mtemp == null){
%>
<%=getAdsNames64mtemp %>
<%
}else{
        String tempResultreturnp65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsNames64mtemp));
        %>
        <%= tempResultreturnp65 %>
        <%
}
break;
case 69:
        gotMethod = true;
        String yearBook_20id=  request.getParameter("yearBook72");
        int yearBook_20idTemp  = Integer.parseInt(yearBook_20id);
        java.lang.String getYearBook69mtemp = sampleMainProxyid.getYearBook(yearBook_20idTemp);
if(getYearBook69mtemp == null){
%>
<%=getYearBook69mtemp %>
<%
}else{
        String tempResultreturnp70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getYearBook69mtemp));
        %>
        <%= tempResultreturnp70 %>
        <%
}
break;
case 74:
        gotMethod = true;
        String yearBook_21id=  request.getParameter("yearBook77");
        int yearBook_21idTemp  = Integer.parseInt(yearBook_21id);
        String adName_22id=  request.getParameter("adName79");
            java.lang.String adName_22idTemp = null;
        if(!adName_22id.equals("")){
         adName_22idTemp  = adName_22id;
        }
        java.lang.String getAd74mtemp = sampleMainProxyid.getAd(yearBook_21idTemp,adName_22idTemp);
if(getAd74mtemp == null){
%>
<%=getAd74mtemp %>
<%
}else{
        String tempResultreturnp75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAd74mtemp));
        %>
        <%= tempResultreturnp75 %>
        <%
}
break;
case 81:
        gotMethod = true;
        String yearBook_23id=  request.getParameter("yearBook84");
        int yearBook_23idTemp  = Integer.parseInt(yearBook_23id);
        String adName_24id=  request.getParameter("adName86");
            java.lang.String adName_24idTemp = null;
        if(!adName_24id.equals("")){
         adName_24idTemp  = adName_24id;
        }
        String phone_25id=  request.getParameter("phone88");
            java.lang.String phone_25idTemp = null;
        if(!phone_25id.equals("")){
         phone_25idTemp  = phone_25id;
        }
        String street_26id=  request.getParameter("street90");
            java.lang.String street_26idTemp = null;
        if(!street_26id.equals("")){
         street_26idTemp  = street_26id;
        }
        String town_27id=  request.getParameter("town92");
            java.lang.String town_27idTemp = null;
        if(!town_27id.equals("")){
         town_27idTemp  = town_27id;
        }
        String postCode_28id=  request.getParameter("postCode94");
            java.lang.String postCode_28idTemp = null;
        if(!postCode_28id.equals("")){
         postCode_28idTemp  = postCode_28id;
        }
        String category_29id=  request.getParameter("category96");
            java.lang.String category_29idTemp = null;
        if(!category_29id.equals("")){
         category_29idTemp  = category_29id;
        }
        sampleMainProxyid.addAd(yearBook_23idTemp,adName_24idTemp,phone_25idTemp,street_26idTemp,town_27idTemp,postCode_28idTemp,category_29idTemp);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>