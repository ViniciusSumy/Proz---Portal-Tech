var slideIndex = 0;
showSlides();

document.getElementById("prevBtn").onclick = function() {
    slideIndex--;
    showSlides();
};

document.getElementById("nextBtn").onclick = function() {
    slideIndex++;
    showSlides();
};

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("slide");
    for (i = 0; i < slides.length; i++) {
        slides[i]
    .style.left = "-100%";
}
slideIndex++;
if (slideIndex > slides.length) {slideIndex = 1}
slides[slideIndex-1].style.left = "0";
}

