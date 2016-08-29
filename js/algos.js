var test_arr = ["long phrase","longest phrase","longer phrase"];
var test_arr2 = ["1", "2", "three", "three", "  three"];

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

function contains_pair(obj1, obj2) {
    for(var key in obj1) {
        if (obj1[key] == obj2[key]) {
            return true;
        }
    }
    return false;
}

console.log(longest_string(test_arr));
console.log(longest_string(test_arr2));