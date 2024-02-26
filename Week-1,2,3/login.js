function validateForm() {
    var name = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    if (!/^[a-zA-Z]+$/.test(name) || name.length < 6) {
        alert("Invalid name. Name should contain only alphabets and have a length of at least 6 characters.");
        return false;
    }

    if (password.length < 6) {
        alert("Invalid password. Password should not be less than 6 characters.");
        return false;
    }

    return true;
}
