%include('template/index.tpl')
<html>
<title>Fill Up Form</title>
<body>
<div class="container">
<form class="form-control">
<fieldset>
    <legend class="text-center">Ministry Report Form</legend>
    </div class="form-control">
    <div class="form-group">
      <label for="staticDate2">Date</label>
      <input type="date" class="form-control" id="inputDate" aria-describedby="emailHelp" placeholder="Date" name="date" value="12/21/21">
    
    </div>
    <div class="form-group">
    
      <label for="floatingInput">Day</label>
      <input type="text" class="form-control" id="inputDay" aria-describedby="dayHelp" placeholder="Mon" name="day">
    
    </div>
    <div class="form-group">
      <label for="staticMinistry">Ministry</label>
      <input type="text" class="form-control" id="" aria-describedby="ministryName" placeholder="Mindoro" name="ministry">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Preacher</label>
      <input type="text" class="form-control" id="" aria-describedby="preacherName" placeholder="Ptr.Nobody" name="preacher">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Assistants</label>
      <input type="text" class="form-control" id="" aria-describedby="assistantsName" placeholder="Asst1/Asst2" name="asst">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Message</label>
      <input type="text" class="form-control" id="" aria-describedby="messageName" placeholder="The Message" name="message">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Attendees</label>
      <input type="number" class="form-control" id="" aria-describedby="attendeesNumber" placeholder="No. of Attendees" name="att">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Tithes</label>
      <input type="real" class="form-control" id="" aria-describedby="tithesName" placeholder="100.00" name="tithes">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Offering</label>
      <input type="real" class="form-control" id="" aria-describedby="offeringName" placeholder="100.00" name="offering">
    </div>
    <div class="form-group">
      <label for="staticMinistry">Remarks</label>
      <input type="text" class="form-control" id="" aria-describedby="remarksName" placeholder="A short description." name="remark">
    </div>
    
    <button type="submit" class="btn btn-md btn-primary" name="submit" value="submit">Save</button>
    
</fieldset>
</form>
<div class="col-md-4"></div>
</div><!--container-->
</body>
</html>
