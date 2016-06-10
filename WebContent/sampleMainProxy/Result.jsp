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
        java.lang.String getAdsNames25mtemp = sampleMainProxyid.getAdsNames(yearBook_4idTemp);
if(getAdsNames25mtemp == null){
%>
<%=getAdsNames25mtemp %>
<%
}else{
        String tempResultreturnp26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsNames25mtemp));
        %>
        <%= tempResultreturnp26 %>
        <%
}
break;
case 30:
        gotMethod = true;
        String yearBook_5id=  request.getParameter("yearBook33");
        int yearBook_5idTemp  = Integer.parseInt(yearBook_5id);
        java.lang.String getYearBook30mtemp = sampleMainProxyid.getYearBook(yearBook_5idTemp);
if(getYearBook30mtemp == null){
%>
<%=getYearBook30mtemp %>
<%
}else{
        String tempResultreturnp31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getYearBook30mtemp));
        %>
        <%= tempResultreturnp31 %>
        <%
}
break;
case 35:
        gotMethod = true;
        String yearBook_6id=  request.getParameter("yearBook38");
        int yearBook_6idTemp  = Integer.parseInt(yearBook_6id);
        String adName_7id=  request.getParameter("adName40");
            java.lang.String adName_7idTemp = null;
        if(!adName_7id.equals("")){
         adName_7idTemp  = adName_7id;
        }
        java.lang.String getAd35mtemp = sampleMainProxyid.getAd(yearBook_6idTemp,adName_7idTemp);
if(getAd35mtemp == null){
%>
<%=getAd35mtemp %>
<%
}else{
        String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAd35mtemp));
        %>
        <%= tempResultreturnp36 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String yearBook_8id=  request.getParameter("yearBook45");
        int yearBook_8idTemp  = Integer.parseInt(yearBook_8id);
        String adName_9id=  request.getParameter("adName47");
            java.lang.String adName_9idTemp = null;
        if(!adName_9id.equals("")){
         adName_9idTemp  = adName_9id;
        }
        String phone_10id=  request.getParameter("phone49");
            java.lang.String phone_10idTemp = null;
        if(!phone_10id.equals("")){
         phone_10idTemp  = phone_10id;
        }
        String street_11id=  request.getParameter("street51");
            java.lang.String street_11idTemp = null;
        if(!street_11id.equals("")){
         street_11idTemp  = street_11id;
        }
        String town_12id=  request.getParameter("town53");
            java.lang.String town_12idTemp = null;
        if(!town_12id.equals("")){
         town_12idTemp  = town_12id;
        }
        String postCode_13id=  request.getParameter("postCode55");
            java.lang.String postCode_13idTemp = null;
        if(!postCode_13id.equals("")){
         postCode_13idTemp  = postCode_13id;
        }
        String category_14id=  request.getParameter("category57");
            java.lang.String category_14idTemp = null;
        if(!category_14id.equals("")){
         category_14idTemp  = category_14id;
        }
        sampleMainProxyid.addAd(yearBook_8idTemp,adName_9idTemp,phone_10idTemp,street_11idTemp,town_12idTemp,postCode_13idTemp,category_14idTemp);
break;
case 59:
        gotMethod = true;
        String yearBook_15id=  request.getParameter("yearBook62");
        int yearBook_15idTemp  = Integer.parseInt(yearBook_15id);
        String oldAdName_16id=  request.getParameter("oldAdName64");
            java.lang.String oldAdName_16idTemp = null;
        if(!oldAdName_16id.equals("")){
         oldAdName_16idTemp  = oldAdName_16id;
        }
        String oldStreet_17id=  request.getParameter("oldStreet66");
            java.lang.String oldStreet_17idTemp = null;
        if(!oldStreet_17id.equals("")){
         oldStreet_17idTemp  = oldStreet_17id;
        }
        String oldTown_18id=  request.getParameter("oldTown68");
            java.lang.String oldTown_18idTemp = null;
        if(!oldTown_18id.equals("")){
         oldTown_18idTemp  = oldTown_18id;
        }
        String oldPostCode_19id=  request.getParameter("oldPostCode70");
            java.lang.String oldPostCode_19idTemp = null;
        if(!oldPostCode_19id.equals("")){
         oldPostCode_19idTemp  = oldPostCode_19id;
        }
        String oldCategory_20id=  request.getParameter("oldCategory72");
            java.lang.String oldCategory_20idTemp = null;
        if(!oldCategory_20id.equals("")){
         oldCategory_20idTemp  = oldCategory_20id;
        }
        String newAdName_21id=  request.getParameter("newAdName74");
            java.lang.String newAdName_21idTemp = null;
        if(!newAdName_21id.equals("")){
         newAdName_21idTemp  = newAdName_21id;
        }
        String newPhone_22id=  request.getParameter("newPhone76");
            java.lang.String newPhone_22idTemp = null;
        if(!newPhone_22id.equals("")){
         newPhone_22idTemp  = newPhone_22id;
        }
        String newStreet_23id=  request.getParameter("newStreet78");
            java.lang.String newStreet_23idTemp = null;
        if(!newStreet_23id.equals("")){
         newStreet_23idTemp  = newStreet_23id;
        }
        String newTown_24id=  request.getParameter("newTown80");
            java.lang.String newTown_24idTemp = null;
        if(!newTown_24id.equals("")){
         newTown_24idTemp  = newTown_24id;
        }
        String newPostCode_25id=  request.getParameter("newPostCode82");
            java.lang.String newPostCode_25idTemp = null;
        if(!newPostCode_25id.equals("")){
         newPostCode_25idTemp  = newPostCode_25id;
        }
        String newCategory_26id=  request.getParameter("newCategory84");
            java.lang.String newCategory_26idTemp = null;
        if(!newCategory_26id.equals("")){
         newCategory_26idTemp  = newCategory_26id;
        }
        sampleMainProxyid.modifyAd(yearBook_15idTemp,oldAdName_16idTemp,oldStreet_17idTemp,oldTown_18idTemp,oldPostCode_19idTemp,oldCategory_20idTemp,newAdName_21idTemp,newPhone_22idTemp,newStreet_23idTemp,newTown_24idTemp,newPostCode_25idTemp,newCategory_26idTemp);
break;
case 86:
        gotMethod = true;
        String category_27id=  request.getParameter("category89");
            java.lang.String category_27idTemp = null;
        if(!category_27id.equals("")){
         category_27idTemp  = category_27id;
        }
        sampleMainProxyid.dropCategory(category_27idTemp);
break;
case 91:
        gotMethod = true;
        String yearBook_28id=  request.getParameter("yearBook94");
        int yearBook_28idTemp  = Integer.parseInt(yearBook_28id);
        String adName_29id=  request.getParameter("adName96");
            java.lang.String adName_29idTemp = null;
        if(!adName_29id.equals("")){
         adName_29idTemp  = adName_29id;
        }
        sampleMainProxyid.dropAd(yearBook_28idTemp,adName_29idTemp);
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