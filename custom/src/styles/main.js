[...document.querySelectorAll(".inheritedMembers div")]
    .filter(i => i.innerText.startsWith("System.Object"))
    .map(i => i.remove());
if (!document.querySelectorAll(".inheritedMembers div").length) {
    document.querySelector(".inheritedMembers").remove();
}
document.querySelectorAll(".")