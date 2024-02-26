function validateForm() {
    var name = document.getElementById("name").value;
    var password = document.getElementById("password").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;

    if (!/^[a-zA-Z]+$/.test(name) || name.length < 6) {
        alert("Invalid name. Name should contain only alphabets and have a length of at least 6 characters.");
        return false;
    }

    if (password.length < 6) {
        alert("Invalid password. Password should not be less than 6 characters.");
        return false;
    }

    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!emailPattern.test(email)) {
        alert("Invalid email. Email should follow the standard pattern name@domain.com.");
        return false;
    }

    var phonePattern = /^\d{10}$/;
    if (!phonePattern.test(phone)) {
        alert("Invalid phone number. Phone number should contain 10 digits only.");
        return false;
    }

    return true;
}
