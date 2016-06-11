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
        String yearBook_16id=  request.getParameter("yearBook55");
        int yearBook_16idTemp  = Integer.parseInt(yearBook_16id);
        java.lang.String getCategoriesNames52mtemp = sampleMainProxyid.getCategoriesNames(yearBook_16idTemp);
if(getCategoriesNames52mtemp == null){
%>
<%=getCategoriesNames52mtemp %>
<%
}else{
        String tempResultreturnp53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCategoriesNames52mtemp));
        %>
        <%= tempResultreturnp53 %>
        <%
}
break;
case 57:
        gotMethod = true;
        String yearBook_17id=  request.getParameter("yearBook60");
        int yearBook_17idTemp  = Integer.parseInt(yearBook_17id);
        java.lang.String getPostCodes57mtemp = sampleMainProxyid.getPostCodes(yearBook_17idTemp);
if(getPostCodes57mtemp == null){
%>
<%=getPostCodes57mtemp %>
<%
}else{
        String tempResultreturnp58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPostCodes57mtemp));
        %>
        <%= tempResultreturnp58 %>
        <%
}
break;
case 62:
        gotMethod = true;
        String yearBook_18id=  request.getParameter("yearBook65");
        int yearBook_18idTemp  = Integer.parseInt(yearBook_18id);
        java.lang.String getStreetsNames62mtemp = sampleMainProxyid.getStreetsNames(yearBook_18idTemp);
if(getStreetsNames62mtemp == null){
%>
<%=getStreetsNames62mtemp %>
<%
}else{
        String tempResultreturnp63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getStreetsNames62mtemp));
        %>
        <%= tempResultreturnp63 %>
        <%
}
break;
case 67:
        gotMethod = true;
        String yearBook_19id=  request.getParameter("yearBook70");
        int yearBook_19idTemp  = Integer.parseInt(yearBook_19id);
        java.lang.String getTownsNames67mtemp = sampleMainProxyid.getTownsNames(yearBook_19idTemp);
if(getTownsNames67mtemp == null){
%>
<%=getTownsNames67mtemp %>
<%
}else{
        String tempResultreturnp68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getTownsNames67mtemp));
        %>
        <%= tempResultreturnp68 %>
        <%
}
break;
case 72:
        gotMethod = true;
        String category_20id=  request.getParameter("category75");
            java.lang.String category_20idTemp = null;
        if(!category_20id.equals("")){
         category_20idTemp  = category_20id;
        }
        sampleMainProxyid.dropCategory(category_20idTemp);
break;
case 77:
        gotMethod = true;
        String yearBook_21id=  request.getParameter("yearBook80");
        int yearBook_21idTemp  = Integer.parseInt(yearBook_21id);
        String adName_22id=  request.getParameter("adName82");
            java.lang.String adName_22idTemp = null;
        if(!adName_22id.equals("")){
         adName_22idTemp  = adName_22id;
        }
        sampleMainProxyid.dropAd(yearBook_21idTemp,adName_22idTemp);
break;
case 84:
        gotMethod = true;
        String yearBook_23id=  request.getParameter("yearBook87");
        int yearBook_23idTemp  = Integer.parseInt(yearBook_23id);
        java.lang.String getAdsNames84mtemp = sampleMainProxyid.getAdsNames(yearBook_23idTemp);
if(getAdsNames84mtemp == null){
%>
<%=getAdsNames84mtemp %>
<%
}else{
        String tempResultreturnp85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsNames84mtemp));
        %>
        <%= tempResultreturnp85 %>
        <%
}
break;
case 89:
        gotMethod = true;
        String yearBook_24id=  request.getParameter("yearBook92");
        int yearBook_24idTemp  = Integer.parseInt(yearBook_24id);
        java.lang.String getYearBook89mtemp = sampleMainProxyid.getYearBook(yearBook_24idTemp);
if(getYearBook89mtemp == null){
%>
<%=getYearBook89mtemp %>
<%
}else{
        String tempResultreturnp90 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getYearBook89mtemp));
        %>
        <%= tempResultreturnp90 %>
        <%
}
break;
case 94:
        gotMethod = true;
        String yearBook_25id=  request.getParameter("yearBook97");
        int yearBook_25idTemp  = Integer.parseInt(yearBook_25id);
        String adName_26id=  request.getParameter("adName99");
            java.lang.String adName_26idTemp = null;
        if(!adName_26id.equals("")){
         adName_26idTemp  = adName_26id;
        }
        java.lang.String getAd94mtemp = sampleMainProxyid.getAd(yearBook_25idTemp,adName_26idTemp);
if(getAd94mtemp == null){
%>
<%=getAd94mtemp %>
<%
}else{
        String tempResultreturnp95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAd94mtemp));
        %>
        <%= tempResultreturnp95 %>
        <%
}
break;
case 101:
        gotMethod = true;
        String yearBook_27id=  request.getParameter("yearBook104");
        int yearBook_27idTemp  = Integer.parseInt(yearBook_27id);
        String adName_28id=  request.getParameter("adName106");
            java.lang.String adName_28idTemp = null;
        if(!adName_28id.equals("")){
         adName_28idTemp  = adName_28id;
        }
        String phone_29id=  request.getParameter("phone108");
            java.lang.String phone_29idTemp = null;
        if(!phone_29id.equals("")){
         phone_29idTemp  = phone_29id;
        }
        String street_30id=  request.getParameter("street110");
            java.lang.String street_30idTemp = null;
        if(!street_30id.equals("")){
         street_30idTemp  = street_30id;
        }
        String town_31id=  request.getParameter("town112");
            java.lang.String town_31idTemp = null;
        if(!town_31id.equals("")){
         town_31idTemp  = town_31id;
        }
        String postCode_32id=  request.getParameter("postCode114");
            java.lang.String postCode_32idTemp = null;
        if(!postCode_32id.equals("")){
         postCode_32idTemp  = postCode_32id;
        }
        String category_33id=  request.getParameter("category116");
            java.lang.String category_33idTemp = null;
        if(!category_33id.equals("")){
         category_33idTemp  = category_33id;
        }
        sampleMainProxyid.addAd(yearBook_27idTemp,adName_28idTemp,phone_29idTemp,street_30idTemp,town_31idTemp,postCode_32idTemp,category_33idTemp);
break;
case 118:
        gotMethod = true;
        String yearBook_34id=  request.getParameter("yearBook121");
        int yearBook_34idTemp  = Integer.parseInt(yearBook_34id);
        String category_35id=  request.getParameter("category123");
            java.lang.String category_35idTemp = null;
        if(!category_35id.equals("")){
         category_35idTemp  = category_35id;
        }
        java.lang.String getAdsByCategory118mtemp = sampleMainProxyid.getAdsByCategory(yearBook_34idTemp,category_35idTemp);
if(getAdsByCategory118mtemp == null){
%>
<%=getAdsByCategory118mtemp %>
<%
}else{
        String tempResultreturnp119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsByCategory118mtemp));
        %>
        <%= tempResultreturnp119 %>
        <%
}
break;
case 125:
        gotMethod = true;
        String yearBook_36id=  request.getParameter("yearBook128");
        int yearBook_36idTemp  = Integer.parseInt(yearBook_36id);
        String name_37id=  request.getParameter("name130");
            java.lang.String name_37idTemp = null;
        if(!name_37id.equals("")){
         name_37idTemp  = name_37id;
        }
        java.lang.String getAdsByName125mtemp = sampleMainProxyid.getAdsByName(yearBook_36idTemp,name_37idTemp);
if(getAdsByName125mtemp == null){
%>
<%=getAdsByName125mtemp %>
<%
}else{
        String tempResultreturnp126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsByName125mtemp));
        %>
        <%= tempResultreturnp126 %>
        <%
}
break;
case 132:
        gotMethod = true;
        String yearBook_38id=  request.getParameter("yearBook135");
        int yearBook_38idTemp  = Integer.parseInt(yearBook_38id);
        String street_39id=  request.getParameter("street137");
            java.lang.String street_39idTemp = null;
        if(!street_39id.equals("")){
         street_39idTemp  = street_39id;
        }
        String town_40id=  request.getParameter("town139");
            java.lang.String town_40idTemp = null;
        if(!town_40id.equals("")){
         town_40idTemp  = town_40id;
        }
        String postCode_41id=  request.getParameter("postCode141");
            java.lang.String postCode_41idTemp = null;
        if(!postCode_41id.equals("")){
         postCode_41idTemp  = postCode_41id;
        }
        java.lang.String getAdsByAddress132mtemp = sampleMainProxyid.getAdsByAddress(yearBook_38idTemp,street_39idTemp,town_40idTemp,postCode_41idTemp);
if(getAdsByAddress132mtemp == null){
%>
<%=getAdsByAddress132mtemp %>
<%
}else{
        String tempResultreturnp133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsByAddress132mtemp));
        %>
        <%= tempResultreturnp133 %>
        <%
}
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