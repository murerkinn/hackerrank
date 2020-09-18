var btn = document.createElement("Button");
let count = 0
btn.innerHTML = count;
btn.id = "btn";
btn.className = "btnClass";

document.body.appendChild(btn);

btn.onclick = function() {
    count += 1
    btn.innerHTML = count;
}