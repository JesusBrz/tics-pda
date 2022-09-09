// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "flowbite";

const printerCard = [...document.querySelectorAll("[data-printer-card]")];
const printerCardName = [...document.querySelectorAll("[data-printer-name]")];
const printerCardModel = [...document.querySelectorAll("[data-printer-model]")];
const printerCardSerial = [
  ...document.querySelectorAll("[data-printer-serial]"),
];
const searchInput = document.querySelector("[data-search]");

let names = [];
let models = [];
let serials = [];

let printers = [];

for (var i = 0; i < printerCardName.length; i++) {
  printerCard[i];
  names[i] = printerCardName[i].innerHTML;
  models[i] = printerCardModel[i].innerHTML;
  serials[i] = printerCardSerial[i].innerHTML;

  printers[i] = {
    element: printerCard[i],
    name: names[i],
    model: models[i],
    serial: serials[i],
  };
}

searchInput.addEventListener("input", (e) => {
  const value = e.target.value.toLowerCase();
  console.log(value);
  printers.forEach((printer) => {
    const isVisible =
      printer.name.toLowerCase().includes(value) ||
      printer.model.toLowerCase().includes(value) ||
      printer.serial.toLowerCase().includes(value);
    printer.element.classList.toggle("hidden", !isVisible);
  });
});
