function showMemberlist() {
    var otherElements = document.querySelectorAll('.other-page:not(#memberlist)');
    for (var i = 0; i < otherElements.length; i++) {
        otherElements[i].style.display = 'none';
    }

    var content = document.getElementById('memberlist');
    content.style.display = 'block';
}

function showMainpage() {
    var otherElements = document.querySelectorAll('.other-page:not(#mainpage)');
    for (var i = 0; i < otherElements.length; i++) {
        otherElements[i].style.display = 'none';
    }

    var content = document.getElementById('mainpage');
    content.style.display = 'block';
}