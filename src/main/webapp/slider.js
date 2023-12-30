/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const homeSlider = document.getElementById("homeSlider");
const prevSlide = document.getElementById("prevSlide");
const currentSlide = document.getElementById("currentSlide");
const currentSlideImg = document.getElementById("currentSlideImg");
const currentSlideLink = document.getElementById("currentSlideLink");
const nextSlide = document.getElementById("nextSlide");
const slideProgressIndicator = document.getElementById("slideProgressIndicator");

const slides = [
    {
        id: 0,
        title: "Slide 1",
        img: "https://i.postimg.cc/mrpH3X2T/Slider1.png",
        link: "/categories/vegetables.jsp"
    },
    {
        id: 1,
        title: "Slide 2",
        img: "https://i.postimg.cc/Y9JLZvWV/Slider2.png",
        link: "/categories/flours.jsp"
    },
    {
        id: 2,
        title: "Slide 3",
        img: "https://i.postimg.cc/qB33nGfd/Slider3.png",
        link: "/deals.jsp"
    }
];

let currentSlideIndex = 0;

const showSlide = (slideIndex) => {
    const slide = slides[slideIndex];
    currentSlideImg.src = slide.img;
    currentSlideLink.href = slide.link;
    currentSlideLink.title = slide.title;
};

showSlide(currentSlideIndex);

prevSlide.addEventListener("click", () => {
    currentSlideIndex--;
    if (currentSlideIndex < 0) {
        currentSlideIndex = slides.length - 1;
    }
    showSlide(currentSlideIndex);
});

nextSlide.addEventListener("click", () => {
    currentSlideIndex++;
    if (currentSlideIndex > slides.length - 1) {
        currentSlideIndex = 0;
    }
    showSlide(currentSlideIndex);
});

// auto slide with 5000ms interval as a function
const autoSlide = setInterval(() => {
    currentSlideIndex++;
    if (currentSlideIndex > slides.length - 1) {
        currentSlideIndex = 0;
    }
    showSlide(currentSlideIndex);
}, 5000);


// when prevSlide and nextSlide are clicked, clear the interval in autoSlide
const clearAutoSlide = () => {
    clearInterval(autoSlide);
}

prevSlide.addEventListener("click", clearAutoSlide);
nextSlide.addEventListener("click", clearAutoSlide);