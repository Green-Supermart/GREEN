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
        img: "https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/1"
    },
    {
        id: 1,
        title: "Slide 2",
        img: "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/2"
    },
    {
        id: 2,
        title: "Slide 3",
        img: "https://images.unsplash.com/photo-1431263154979-0982327fccbb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/3"
    },
    {
        id: 3,
        title: "Slide 4",
        img: "https://images.unsplash.com/photo-1496483648148-47c686dc86a8?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/4"
    },
    {
        id: 4,
        title: "Slide 5",
        img: "https://images.unsplash.com/photo-1462524500090-89443873e2b4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/5"
    },
    {
        id: 5,
        title: "Slide 6",
        img: "https://images.unsplash.com/photo-1588477000993-460d2257f88a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/6"
    },
    {
        id: 6,
        title: "Slide 7",
        img: "https://images.unsplash.com/photo-1524303676975-5989d34c6854?q=80&w=2065&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/7"
    },
    {
        id: 7,
        title: "Slide 8",
        img: "https://images.unsplash.com/photo-1538340794916-c941f42976f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/8"
    },
    {
        id: 8,
        title: "Slide 9",
        img: "https://images.unsplash.com/photo-1541878578057-63a626f9ed7b?q=80&w=2099&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        link: "https://www.example.com/9"
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