function validateForm() {
    let form = document.forms["myForm"];
    let name = form["name"].value;
    let email = form["email"].value;
    let password = form["password"].value;
    let phone = form["phone"].value;
    let dob = form["dob"].value;
    let gender = form["gender"].value;
    let country = form["country"] ? form["country"].value : "Not Available";
  
    if (name === "") {
      alert("Name must be filled out");
      return false;
    }
  
    let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
      alert("Please enter a valid email address");
      return false;
    }
  
    if (password.length < 6) {
      alert("Password must be at least 6 characters long");
      return false;
    }
  
    let phonePattern = /^[0-9]{10}$/;
    if (!phonePattern.test(phone)) {
      alert("Please enter a valid 10-digit phone number");
      return false;
    }
  
    if (dob === "") {
      alert("Please select your date of birth");
      return false;
    }
  
    if (gender === "") {
      alert("Please select your gender");
      return false;
    }
  
    if (form["country"] && country === "") {
      alert("Please select your country");
      return false;
    }
  
    let message = 
      "Registration Successful!\n\n" +
      "Name: " + name + "\n" +
      "Email: " + email + "\n" +
      "Password: " + password + "\n" +
      "Phone: " + phone + "\n" +
      "Date of Birth: " + dob + "\n" +
      "Gender: " + gender + "\n" +
      "Country: " + country;
  
    alert(message);
  
    return false; 
  }
  