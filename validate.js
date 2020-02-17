function validate()
 {
  var id = document.myform.id;
  var firstname = document.myform.firstname;
  var lastname = document.myform.lastname;
  var rollnumber = document.myform.rollnumber;
  var address = document.myform.address;
  var maths = document.myform.maths;
  var english = document.myform.english;
  var physics = document.myform.physics;
    
  if (id.value == ""  ||  firstname.value == ""  ||  lastname.value == ""  || rollnumber.value == ""  ||  address.value == ""  ||  maths.value == ""  ||  english.value == ""  ||  physics.value == ""  )
  {
	  alert("Please provide your information");
     
      return false;
  }
  
  return true;
 }