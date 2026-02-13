<%@ page import="com.wipro.hotel.bean.RoomReservationBean" %>

<html>
<head>
    <title>Display Room Reservation</title>
</head>
<body>

<h2>Room Reservation Details</h2>

<%
RoomReservationBean bean = (RoomReservationBean) request.getAttribute("record");
String message = (String) request.getAttribute("message");
if(bean != null){
%>
Record ID: <%= bean.getRecordId() %><br>
Guest Name: <%= bean.getGuestName() %><br>
Room Type: <%= bean.getRoomType() %><br>
Check In: <%= bean.getCheckInDate() %><br>
Check Out: <%= bean.getCheckOutDate() %><br>
Room No: <%= bean.getRoomNo() %><br>
Remarks: <%= bean.getRemarks() %><br>
<%
}
else{
%>

<h3><%= message %></h3>

<%
}
%>

<br>
<a href="menu.html">Back to Menu</a>

</body>
</html>
