const cartIcon = document.getElementById("cartIcon");
const cartBackdrop = document.getElementById("cartBackdrop");
const cartBackIcon = document.getElementById("cartBackIcon");
const cartBox = document.getElementById("cartBox");
const cartCancelBtn = document.getElementById("cartCancelBtn");
const cartListContainer = document.getElementById("cartListContainer");
const cartList = document.getElementById("cartList");
const cartAddBtn = document.getElementById("cartAddBtn");


function noScroll() {
    document.body.style.overflow = "hidden";
}

function scroll() {
    document.body.style.overflow = "auto";
}

// show cartBox
function showCart() {
    cartBackdrop.style.display = "block";
    cartBox.style.display = "flex";
    document.body.style.overflow = "hidden";
}

// hide cartBox
function hideCart() {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
}




cartIcon.addEventListener('click', function() {
    if (cartBackdrop.style.display === "none") {
        showCart();
    } else {
        hideCart();
    }
});

// hide cartBox when clicked outside
document.addEventListener('click', function(event) {
    if (!cartIcon.contains(event.target)) {
        cartBackdrop.style.display = "none";
        cartBox.style.display = "none";
        document.body.style.overflow = "auto";
    }
});
cartBox.addEventListener('click', function(event) {
    event.stopPropagation();
});
cartBackIcon.addEventListener('click', function(event) {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
});
cartCancelBtn.addEventListener('click', function(event) {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
});


// when pressed alt key + c, toggle cartBox show/hide
document.addEventListener('keydown', function(event) {
    if (event.altKey && event.key === "c") {
        if (cartBackdrop.style.display === "none") {
            showCart();
        } else {
            hideCart();
        }
    }
});



const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
let totalBillAmount = 0;

    Promise.all(cartItems.map(item => {
        let arrayIndex = item.productId - 1;

        return fetch(`/getProductDetails?id=` + item.productId)
            .then(response => response.json())
            .then(productDetails => {
                const singleProduct = productDetails[arrayIndex];

                if (singleProduct) {
                    const price = singleProduct.discPrice;
                    const quantity = item.quantity;
                    let subTotal = 0;

                    totalBillAmount += price * quantity;

                    subTotal = price * quantity;


                    const cartItemElement = document.createElement('div');
                    cartItemElement.classList.add('cartItem');

                    const cartItemHTML =
                        `
                        <div style="height: 100%; width: 70px;">
                            <img style="height: 100%; width: 100%; object-fit: cover; border-radius: 5px;" src="` + singleProduct.image + `" alt="Product Image">
                        </div>
                        <div style="height: 100%; width: calc(100% - 165px); display: flex; flex-direction: column; justify-content: center;">
                            <h1 style="font-size: 12px; font-weight: 400;">` + singleProduct.name + `</h1>
                            <h2 style="font-size: 10px; font-weight: 300;">` + quantity + `</h2>
                        </div>
                        <div class="cartItemAction" style="height: 100%; width: 70px; display: flex; justify-content: end; align-items: center; margin-right: 15px;">
                            <i onclick="removeFromCart(` + item.productId + `)" class="fa-solid fa-trash-can"></i>
                            <p class="cartItemPrice">Rs. <span class="cartItemPrice">` + subTotal + `</span></p>
                        </div>
                         `;

                    cartItemElement.innerHTML = cartItemHTML;

                    cartList.appendChild(cartItemElement);
                } else {
                    console.error(`Product with ID ` + item.productId + ` not found`);
                }
            })
            .catch(error => {
                console.error('Error fetching product details:', error);
            });
    }))
        .then(() => {
            document.getElementById('cartTotalPrice').innerText = `Rs ` + totalBillAmount;
        })
        .catch(error => {
            console.error('Error fetching product details:', error);
        });


function removeFromCart(productId) {
    let cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    const productIndex = cartItems.findIndex(item => item.productId === productId);

    if (productIndex !== -1) {
        cartItems.splice(productIndex, 1);
        localStorage.setItem("cart", JSON.stringify(cartItems));
        alert("Product removed from cart!");
        location.reload();

    } else {
        alert("Product not found in cart!");
    }
}

 //whenever cartAddBtn is clicked, navigate into checkout pg
 cartAddBtn.addEventListener('click', function() {
     window.location.href = 'http://localhost:8090/isLogged';
 });



const cartEmptyMsg = document.getElementById("cartEmptyMsg");

// check if there is any cartItem in cartList, if not, show "Your cart is empty" message
setInterval(function() {
    if (cartList.innerHTML === "") {
        cartEmptyMsg.style.display = 'flex';
    } else {
        cartEmptyMsg.style.display = 'none';
    }
}, 1000);