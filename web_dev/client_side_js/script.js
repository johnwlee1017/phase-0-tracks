console.log("the script is running");

// change style of element

var item_1 = document.getElementById("item1");
var item_2 = document.getElementById("item2");

item_1.style.border = "2px solid blue"
item_1.style.width = "40px"
item_2.style.color = "red"

// add html element

var list_item = document.createElement("li");
var node = document.createTextNode("fooooood");

list_item.appendChild(node);

var element = document.getElementsByTagName("UL");

element[0].appendChild(list_item)

// event listener example

function clickable() {
  element.innerHTML = "* clicked *";
}

var element = document.getElementById("item2");
element.addEventListener("click", clickable);

// looping through collection of nodes of class (list)

var class_list = document.getElementsByClassName("list2")


for (var i = class_list.length - 1; i >= 0; i--) {
    class_list[i].style.color = "blue"
}












