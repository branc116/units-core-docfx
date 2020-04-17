[...document.querySelectorAll(".inheritedMembers div")]
    .filter(i => i.innerText.startsWith("System.Object"))
    .map(i => i.remove());
if (!document.querySelectorAll(".inheritedMembers div").length) {
    document.querySelector(".inheritedMembers").remove();
}
document.querySelectorAll(".contribution-panel .fab.btn-warning.pull-right").forEach(i => {
    const old = i.getAttribute("href");
    const newHrf = old.replace("/units-core/", "/units-core-docfx/").replace("/apiSpec/", "/apidoc/");
    i.setAttribute("href", newHrf);
});