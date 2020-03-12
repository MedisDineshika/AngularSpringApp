
function validateSubmitForm() {
	  //debugger;
	   var firstName = document.getElementById('firstName').value;
	   var lastName = document.getElementById('lastName').value;
	 
	   var gender = document.getElementById('gender').value;
	   var password = document.getElementById('password').value;
	   
	  
	   
	   if ((firstName=="")|| (lastName=="")  ||(gender=="") || (password=="") ) {
	    
	     alert('All the fileds OR  One of the fileds have not been filed correctly ,try again');


	 	//window.location=window.history.go;
	   }
	   
	   
	   
	   else {
	     document.registrationForm.submit();
	   }
	   
	}
  