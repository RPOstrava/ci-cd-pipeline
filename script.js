const products = {
    product1: 19.99,
    product2: 29.99
  };
  
  function showPrice(product) {
    const priceElement = document.getElementById('price');
    priceElement.innerText = `Price: $${products[product]}`;
  }
  