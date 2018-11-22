const priceField = document.getElementById("price-field");
const submitButton = document.getElementById("toy-form-btn");

const formatCurrency = () => {
  if (submitButton) {
    submitButton.addEventListener('mouseover', (event) => {
      const price = priceField.value;
      const newPrice = price.replace(',', '.');
      priceField.value = parseFloat(newPrice);
    });
  }
}

export { formatCurrency };
