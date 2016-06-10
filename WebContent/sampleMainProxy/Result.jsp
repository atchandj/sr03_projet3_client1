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
        String yearBook_1id=  request.getParameter("yearBook16");
        int yearBook_1idTemp  = Integer.parseInt(yearBook_1id);
        java.lang.String getAdsNames13mtemp = sampleMainProxyid.getAdsNames(yearBook_1idTemp);
if(getAdsNames13mtemp == null){
%>
<%=getAdsNames13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsNames13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 18:
        gotMethod = true;
        String yearBook_2id=  request.getParameter("yearBook21");
        int yearBook_2idTemp  = Integer.parseInt(yearBook_2id);
        java.lang.String getYearBook18mtemp = sampleMainProxyid.getYearBook(yearBook_2idTemp);
if(getYearBook18mtemp == null){
%>
<%=getYearBook18mtemp %>
<%
}else{
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getYearBook18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
}
break;
case 23:
        gotMethod = true;
        String yearBook_3id=  request.getParameter("yearBook26");
        int yearBook_3idTemp  = Integer.parseInt(yearBook_3id);
        String adName_4id=  request.getParameter("adName28");
            java.lang.String adName_4idTemp = null;
        if(!adName_4id.equals("")){
         adName_4idTemp  = adName_4id;
        }
        java.lang.String getAd23mtemp = sampleMainProxyid.getAd(yearBook_3idTemp,adName_4idTemp);
if(getAd23mtemp == null){
%>
<%=getAd23mtemp %>
<%
}else{
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAd23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
}
break;
case 30:
        gotMethod = true;
        String yearBook_5id=  request.getParameter("yearBook33");
        int yearBook_5idTemp  = Integer.parseInt(yearBook_5id);
        String adName_6id=  request.getParameter("adName35");
            java.lang.String adName_6idTemp = null;
        if(!adName_6id.equals("")){
         adName_6idTemp  = adName_6id;
        }
        String phone_7id=  request.getParameter("phone37");
            java.lang.String phone_7idTemp = null;
        if(!phone_7id.equals("")){
         phone_7idTemp  = phone_7id;
        }
        String street_8id=  request.getParameter("street39");
            java.lang.String street_8idTemp = null;
        if(!street_8id.equals("")){
         street_8idTemp  = street_8id;
        }
        String town_9id=  request.getParameter("town41");
            java.lang.String town_9idTemp = null;
        if(!town_9id.equals("")){
         town_9idTemp  = town_9id;
        }
        String postCode_10id=  request.getParameter("postCode43");
            java.lang.String postCode_10idTemp = null;
        if(!postCode_10id.equals("")){
         postCode_10idTemp  = postCode_10id;
        }
        String category_11id=  request.getParameter("category45");
            java.lang.String category_11idTemp = null;
        if(!category_11id.equals("")){
         category_11idTemp  = category_11id;
        }
        sampleMainProxyid.addAd(yearBook_5idTemp,adName_6idTemp,phone_7idTemp,street_8idTemp,town_9idTemp,postCode_10idTemp,category_11idTemp);
break;
case 47:
        gotMethod = true;
        String yearBook_12id=  request.getParameter("yearBook50");
        int yearBook_12idTemp  = Integer.parseInt(yearBook_12id);
        String oldAdName_13id=  request.getParameter("oldAdName52");
            java.lang.String oldAdName_13idTemp = null;
        if(!oldAdName_13id.equals("")){
         oldAdName_13idTemp  = oldAdName_13id;
        }
        String oldStreet_14id=  request.getParameter("oldStreet54");
            java.lang.String oldStreet_14idTemp = null;
        if(!oldStreet_14id.equals("")){
         oldStreet_14idTemp  = oldStreet_14id;
        }
        String oldTown_15id=  request.getParameter("oldTown56");
            java.lang.String oldTown_15idTemp = null;
        if(!oldTown_15id.equals("")){
         oldTown_15idTemp  = oldTown_15id;
        }
        String oldPostCode_16id=  request.getParameter("oldPostCode58");
            java.lang.String oldPostCode_16idTemp = null;
        if(!oldPostCode_16id.equals("")){
         oldPostCode_16idTemp  = oldPostCode_16id;
        }
        String oldCategory_17id=  request.getParameter("oldCategory60");
            java.lang.String oldCategory_17idTemp = null;
        if(!oldCategory_17id.equals("")){
         oldCategory_17idTemp  = oldCategory_17id;
        }
        String newAdName_18id=  request.getParameter("newAdName62");
            java.lang.String newAdName_18idTemp = null;
        if(!newAdName_18id.equals("")){
         newAdName_18idTemp  = newAdName_18id;
        }
        String newPhone_19id=  request.getParameter("newPhone64");
            java.lang.String newPhone_19idTemp = null;
        if(!newPhone_19id.equals("")){
         newPhone_19idTemp  = newPhone_19id;
        }
        String newStreet_20id=  request.getParameter("newStreet66");
            java.lang.String newStreet_20idTemp = null;
        if(!newStreet_20id.equals("")){
         newStreet_20idTemp  = newStreet_20id;
        }
        String newTown_21id=  request.getParameter("newTown68");
            java.lang.String newTown_21idTemp = null;
        if(!newTown_21id.equals("")){
         newTown_21idTemp  = newTown_21id;
        }
        String newPostCode_22id=  request.getParameter("newPostCode70");
            java.lang.String newPostCode_22idTemp = null;
        if(!newPostCode_22id.equals("")){
         newPostCode_22idTemp  = newPostCode_22id;
        }
        String newCategory_23id=  request.getParameter("newCategory72");
            java.lang.String newCategory_23idTemp = null;
        if(!newCategory_23id.equals("")){
         newCategory_23idTemp  = newCategory_23id;
        }
        sampleMainProxyid.modifyAd(yearBook_12idTemp,oldAdName_13idTemp,oldStreet_14idTemp,oldTown_15idTemp,oldPostCode_16idTemp,oldCategory_17idTemp,newAdName_18idTemp,newPhone_19idTemp,newStreet_20idTemp,newTown_21idTemp,newPostCode_22idTemp,newCategory_23idTemp);
break;
case 74:
        gotMethod = true;
        String yearBook_24id=  request.getParameter("yearBook77");
        int yearBook_24idTemp  = Integer.parseInt(yearBook_24id);
        java.lang.String getCategoriesNames74mtemp = sampleMainProxyid.getCategoriesNames(yearBook_24idTemp);
if(getCategoriesNames74mtemp == null){
%>
<%=getCategoriesNames74mtemp %>
<%
}else{
        String tempResultreturnp75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCategoriesNames74mtemp));
        %>
        <%= tempResultreturnp75 %>
        <%
}
break;
case 79:
        gotMethod = true;
        String yearBook_25id=  request.getParameter("yearBook82");
        int yearBook_25idTemp  = Integer.parseInt(yearBook_25id);
        java.lang.String getPostCodes79mtemp = sampleMainProxyid.getPostCodes(yearBook_25idTemp);
if(getPostCodes79mtemp == null){
%>
<%=getPostCodes79mtemp %>
<%
}else{
        String tempResultreturnp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPostCodes79mtemp));
        %>
        <%= tempResultreturnp80 %>
        <%
}
break;
case 84:
        gotMethod = true;
        String yearBook_26id=  request.getParameter("yearBook87");
        int yearBook_26idTemp  = Integer.parseInt(yearBook_26id);
        java.lang.String getStreetsNames84mtemp = sampleMainProxyid.getStreetsNames(yearBook_26idTemp);
if(getStreetsNames84mtemp == null){
%>
<%=getStreetsNames84mtemp %>
<%
}else{
        String tempResultreturnp85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getStreetsNames84mtemp));
        %>
        <%= tempResultreturnp85 %>
        <%
}
break;
case 89:
        gotMethod = true;
        String yearBook_27id=  request.getParameter("yearBook92");
        int yearBook_27idTemp  = Integer.parseInt(yearBook_27id);
        java.lang.String getTownsNames89mtemp = sampleMainProxyid.getTownsNames(yearBook_27idTemp);
if(getTownsNames89mtemp == null){
%>
<%=getTownsNames89mtemp %>
<%
}else{
        String tempResultreturnp90 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getTownsNames89mtemp));
        %>
        <%= tempResultreturnp90 %>
        <%
}
break;
case 94:
        gotMethod = true;
        String oldCategoryName_28id=  request.getParameter("oldCategoryName97");
            java.lang.String oldCategoryName_28idTemp = null;
        if(!oldCategoryName_28id.equals("")){
         oldCategoryName_28idTemp  = oldCategoryName_28id;
        }
        String newCategoryName_29id=  request.getParameter("newCategoryName99");
            java.lang.String newCategoryName_29idTemp = null;
        if(!newCategoryName_29id.equals("")){
         newCategoryName_29idTemp  = newCategoryName_29id;
        }
        sampleMainProxyid.updateCategory(oldCategoryName_28idTemp,newCategoryName_29idTemp);
break;
case 101:
        gotMethod = true;
        String categoryName_30id=  request.getParameter("categoryName104");
            java.lang.String categoryName_30idTemp = null;
        if(!categoryName_30id.equals("")){
         categoryName_30idTemp  = categoryName_30id;
        }
        sampleMainProxyid.addCategory(categoryName_30idTemp);
break;
case 106:
        gotMethod = true;
        String category_31id=  request.getParameter("category109");
            java.lang.String category_31idTemp = null;
        if(!category_31id.equals("")){
         category_31idTemp  = category_31id;
        }
        sampleMainProxyid.dropCategory(category_31idTemp);
break;
case 111:
        gotMethod = true;
        String yearBook_32id=  request.getParameter("yearBook114");
        int yearBook_32idTemp  = Integer.parseInt(yearBook_32id);
        String adName_33id=  request.getParameter("adName116");
            java.lang.String adName_33idTemp = null;
        if(!adName_33id.equals("")){
         adName_33idTemp  = adName_33id;
        }
        sampleMainProxyid.dropAd(yearBook_32idTemp,adName_33idTemp);
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