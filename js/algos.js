/* 
    Nestor Alvarez
    Aug 29, 2016
*/

var test_arr = ["long phrase","longest phrase","longer phrase"];
var test_arr2 = ["1", "2", "three", "three", "  three"];


/*
    Straight forward string parsing.
    We should be able to create a for loop
    That starts at the last index of the String
    and continues into the beginning, all while 
    assigning the character to a new, reversed string
*/
function longest_string(str_arr) {
    str_length = 0;
    longest_str = "";
    for(i = 0; i < str_arr.length; i++) {
        if (str_arr[i].length > str_length) {
            str_length = str_arr[i].length;
            longest_str = str_arr[i];
        }

    }
    return longest_str;
}


/*
    Whether the key-value pair exists depends on
    only one object. We need to iterate through it
    and simple making a break-return when a pair is
    found. Returns false by default.
*/
function contains_pair(obj1, obj2) {
    for(var key in obj1) {
        if (obj1[key] == obj2[key]) {
            return true;
        }
    }
    return false;
}

/*
    Using nested for-loops, we create "num" number of
    strings. Inside this strings, we concatenate characters
    using the standard ASCII and the included fromCharChode
    function. We use Math.random to our advantage in setting
    up the range of possible lowercase characters. We push the
    final concatenated string into the array, and finally
    return the array reference.
*/
function generate_str(num) {
    arr = []
    for(i = 0; i < num; i++) {
        temp = Math.floor((Math.random() * 10) + 1);
        str = ""
        for(j = 0; j < temp; j++) {
            ascii_access = Math.floor((Math.random() * 26) + 97); 
            str += String.fromCharCode(ascii_access);
        }
        arr.push(str);
    }
    return arr;
}

console.log(longest_string(test_arr));
console.log(longest_string(test_arr2));
console.log(contains_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(contains_pair({name: "Steven", age: 54}, {name: "Tamir", age: 45}))

for(p = 0; p < 10; p++) {
    temp = generate_str(4);
    console.log(temp);
    console.log(longest_string(temp));
}