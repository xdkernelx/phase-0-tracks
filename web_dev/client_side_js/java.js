console.log("the script is running!");

var paragraph = document.getElementById("paragraph");


function addBorder(event) {
    console.log("click happened!")
    event.target.style.border = "6px solid";
}

paragraph.addEventListener("click", addBorder);
