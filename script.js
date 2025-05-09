function showPrice(product) {
  let prices = {
    produkt1: "299 Kč",
    produkt2: "499 Kč"
  };

  const display = document.getElementById("priceDisplay");
  display.textContent = "Cena: " + (prices[product] || "Neznámý produkt");
}
