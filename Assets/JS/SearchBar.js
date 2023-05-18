document.getElementById("searchButton").addEventListener("click",function ()
{
    var searchInput = document.getElementById("searchInput").value;
    window.location.href = "Shop.php?search=" + encodeURIComponent(searchInput);
})