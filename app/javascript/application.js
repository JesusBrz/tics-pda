// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

const printerCard = [...document.querySelectorAll("[data-printer-card]")];
const printerCardName = [...document.querySelectorAll("[data-printer-name]")];
const printerCardModel = [...document.querySelectorAll("[data-printer-model]")];
const printerCardSerial = [...document.querySelectorAll("[data-printer-serial]")];
const searchInput = document.querySelector("[data-search]");

let printers = []

for (var i = 0; i < printerCardName.length; i++) {
  printers[i] = {
    element: printerCard[i],
    name: printerCardName[i].innerHTML,
    model: printerCardModel[i].innerHTML,
    serial: printerCardSerial[i].innerHTML,
  };
}

searchInput.addEventListener("input", (e) => {
  const value = e.target.value.toLowerCase();
  printers.forEach((printer) => {
    const isVisible =
      printer.name.toLowerCase().includes(value) ||
      printer.model.toLowerCase().includes(value) ||
      printer.serial.toLowerCase().includes(value);
    printer.element.classList.toggle("hidden", !isVisible);
  });
});
