function suggestBooks() {
    var keyword = document.getElementById("txtSearch").value.trim();
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "suggestBooksAPI?keyword=" + keyword, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                updateDropdown(response.suggestions);
            } else {
                console.error("Failed to fetch suggestions.");
            }
        }
    };
    xhr.send();
}

function updateDropdown(suggestions) {
    var ddl = document.getElementById("ddlSearchResults");
    ddl.innerHTML = "";
    for (var i = 0; i < suggestions.length; i++) {
        var option = document.createElement("option");
        option.text = suggestions[i];
        ddl.add(option);
    }
}
