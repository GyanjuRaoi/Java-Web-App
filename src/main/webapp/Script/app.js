const wrapper = document.querySelector(".sliderWrapper");
const menuItems = document.querySelectorAll(".menuItem");

const products = [
  {
    id: 1,
    title: "ASUS",
    price: 1190,
    colors: [
      {
        code: "black",
        img: "./images/asus.jpg",
        
      },
      {
        code: "darkblue",
        img: "./images/asus2.jpg",
      },
    ],
  },
  {
    id: 2,
    title: "NITRO",
    price: 149,
    colors: [
    
      {
        code: "green",
        img: "./images/nitro.jpg",
      },
      {
        code: "darkblue",
        img: "./images/nitro2.jpg",
      },
    ],
  },
  {
    id: 3,
    title: "MAC",
    price: 109,
    colors: [
      {
        code: "lightgray",
        img: "./images/mac.jpg",
      },
      {
        code: "green",
        img: "./images/mac1.jpg",
      },
    ],
  },
  {
    id: 4,
    title: "LENEVO",
    price: 129,
    colors: [
      {
        code: "black",
        img: "./images/lenevo.jpg",
      },
      {
        code: "lightgray",
        img: "./images/leveno2.jpg",
      },
    ],
  },
  {
    id: 5,
    title: "DELL",
    price: 99,
    colors: [
      {
        code: "gray",
        img: "./images/dell.jpg",
      },
      {
        code: "black",
        img: "./images/dell 2.jpg",
      },
    ],
  },
];

let choosenProduct = products[0];

const currentProductImg = document.querySelector(".productImg");
const currentProductTitle = document.querySelector(".productTitle");
const currentProductPrice = document.querySelector(".productPrice");
const currentProductColors = document.querySelectorAll(".color");
const currentProductSizes = document.querySelectorAll(".size");

menuItems.forEach((item, index) => {
  item.addEventListener("click", () => {
    //change the current slide
    wrapper.style.transform = `translateX(${-100 * index}vw)`;

    //change the choosen product
    choosenProduct = products[index];

    //change texts of currentProduct
    currentProductTitle.textContent = choosenProduct.title;
    currentProductPrice.textContent = "$" + choosenProduct.price;
    currentProductImg.src = choosenProduct.colors[0].img;

    //assing new colors
    currentProductColors.forEach((color, index) => {
      color.style.backgroundColor = choosenProduct.colors[index].code;
    });
  });
});

currentProductColors.forEach((color, index) => {
  color.addEventListener("click", () => {
    currentProductImg.src = choosenProduct.colors[index].img;
  });
});

currentProductSizes.forEach((size, index) => {
  size.addEventListener("click", () => {
    currentProductSizes.forEach((size) => {
      size.style.backgroundColor = "white";
      size.style.color = "black";
    });
    size.style.backgroundColor = "black";
    size.style.color = "white";
  });
});

const productButton = document.querySelector(".productButton");
const payment = document.querySelector(".payment");
const close = document.querySelector(".close");

productButton.addEventListener("click", () => {
  payment.style.display = "flex";
});

close.addEventListener("click", () => {
  payment.style.display = "none";
});
