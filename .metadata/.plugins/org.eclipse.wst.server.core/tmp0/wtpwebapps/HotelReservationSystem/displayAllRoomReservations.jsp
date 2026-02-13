<%@ page import="java.util.*, com.wipro.hotel.bean.RoomReservationBean" %>
<html>
<head>
    <title>All Room Reservations</title>
</head>
<body>
<h2>All Room Reservations</h2>
<%
List<RoomReservationBean> list = (List<RoomReservationBean>) request.getAttribute("allRecords");
String message = (String) request.getAttribute("message");
if(list != null && !list.isEmpty()){
%>
<table border="1">
<tr>
<th>Record ID</th>
<th>Guest Name</th>
<th>Room Type</th>
<th>Check In</th>
<th>Check Out</th>
<th>Room No</th>
<th>Remarks</th>
</tr>
<%
for(RoomReservationBean r : list){
%>
<tr>
<td><%= r.getRecordId() %></td>
<td><%= r.getGuestName() %></td>
<td><%= r.getRoomType() %></td>
<td><%= r.getCheckInDate() %></td>
<td><%= r.getCheckOutDate() %></td>
<td><%= r.getRoomNo() %></td>
<td><%= r.getRemarks() %></td>
</tr>
<%
}
%>
</table>
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
