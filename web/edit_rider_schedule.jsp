<%-- 
    Document   : Edit driver_schedule
    Created on : Mar 20, 2018, 9:21:09 PM
    Author     : peshal
--%>
<%@include file ="Header_Footer/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Rider's Schedule</title>
    </head>
    <body>
      
        <div  class="container">
            <h1>Edit Rider's Schedule</h1>
            <div class="row">
                <div class=" col-sm-4 col-sm-offset-4">
                  
                    <form method="POST" action="RiderSchedule">
                       <div class="form-group">
                         <label>From</label>
                         <input type="text" class="form-control" id="from" name = "from" placeholder="From Address" size="50" value = ${RiderSchedule.getFrom()}>
                         </div>
                         <div class="form-group">
                         <label >To</label>
                         <input type="text" class="form-control" id="to" name = "to" placeholder="Destination Address" size="50"value = ${RiderSchedule.getTo()}>
                         </div>
                         <div class="form-group">
                         <label>Date</label>
                         <input type="date" class="form-control" id="date" name = "date"value = ${RiderSchedule.getDate()}>
                         </div>
                         <div class="form-group">
                         <label>Time</label>
                         <input type="time" class="form-control" id="time" name = "time" value = ${RiderSchedule.getTime()}>
                         </div>                                             
                        <input type="hidden" name="post_action" value="edit" >
                        <input type="hidden" name="scheduleID" value= ${riderID} >
                        <input type="Submit" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
<%@include file ="Header_Footer/footer.jsp" %>