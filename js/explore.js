// Simply use a for loop from the end of the string
// to the beginning while creating a new string through the reverse parsing

function reverse(str) {
    var new_str = ""
    for(i = str.length - 1; i >= 0; i--) {
        new_str += str[i]
    }
    return new_str
}

reverse("String")

reverse("testing")

if (reverse("sys") == "sys") {
    console.log("Palindrome!")
}