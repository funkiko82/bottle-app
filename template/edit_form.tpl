%include('template/index.tpl')
<html>
<title>Edit Form</title>
<body>
<div class="container">
<form action="/edit/{{no}}" class="form-control">
<fieldset>
    <legend class="text-center ">Ministry Report Form</legend>
    </div class="form-control">
    <div class="form-group">
      <label for="staticDate2">Date</label>
      <input type="date"
             class="form-control"
             id="inputDate"
             aria-describedby="emailHelp"
             placeholder="Date"
             name="date"
             value={{old[1]}}>
    </div>
    <div class="form-group">
      <label for="floatingInput">Day</label>
      <input type="text"
             class="form-control"
             id="inputDay"
             aria-describedby="dayHelp"
             placeholder="Mon"
             name="day"
             value={{old[2]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Ministry</label>
      <input type="text" class="form-control"
             id="" aria-describedby="ministryName"
             placeholder="Mindoro"
             name="ministry"
             value={{old[3]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Preacher</label>
      <input type="text"
             class="form-control"
             id="" aria-describedby="preacherName"
             placeholder="Ptr.Nobody"
             name="preacher"
             value={{old[4]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Assistants</label>
      <input type="text"
             class="form-control"
             id=""
             aria-describedby="assistantsName" p
             laceholder="Asst1/Asst2"
             name="asst" v
             alue={{old[5]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Message</label>
      <input type="text"
             class="form-control" i
             d="" aria-describedby="messageName"
             placeholder="The Message"
             name="message"
             value={{old[6]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Attendees</label>
      <input type="number"
             class="form-control"
             id="" aria-describedby="attendeesNumber"
             placeholder="No. of Attendees"
             name="att"
             value={{old[7]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Tithes</label>
      <input type="real"
             class="form-control"
             id=""
             aria-describedby="tithesName" p
             laceholder="100.00"
             name="tithes"
             value={{old[8]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Offering</label>
      <input type="real"
             class="form-control"
             id=""
             aria-describedby="offeringName"
             placeholder="100.00"
             name="offering"
             value={{old[9]}}>
    </div>
    <div class="form-group">
      <label for="staticMinistry">Remarks</label>
      <input type="text"
             class="form-control"
             id=""
             aria-describedby="remarksName"
             placeholder="A short description."
             name="remark"
             value={{old[10]}}>
    </div>
    <button type="submit"
            class="btn btn-md btn-primary btn-block"
            name="submit"
            value="submit">
            Save
    </button>
</fieldset>
</form>
<div class="col-md-4"></div>
</div><!--container-->
</body>
</html>
