require "application_system_test_case"

class PrintersTest < ApplicationSystemTestCase
  setup do
    @printer = printers(:one)
  end

  test "visiting the index" do
    visit printers_url
    assert_selector "h1", text: "Printers"
  end

  test "should create printer" do
    visit printers_url
    click_on "New printer"

    fill_in "Driver", with: @printer.driver
    fill_in "Ip", with: @printer.ip
    fill_in "Model", with: @printer.model
    fill_in "Name", with: @printer.name
    fill_in "Serial", with: @printer.serial
    click_on "Create Printer"

    assert_text "Printer was successfully created"
    click_on "Back"
  end

  test "should update Printer" do
    visit printer_url(@printer)
    click_on "Edit this printer", match: :first

    fill_in "Driver", with: @printer.driver
    fill_in "Ip", with: @printer.ip
    fill_in "Model", with: @printer.model
    fill_in "Name", with: @printer.name
    fill_in "Serial", with: @printer.serial
    click_on "Update Printer"

    assert_text "Printer was successfully updated"
    click_on "Back"
  end

  test "should destroy Printer" do
    visit printer_url(@printer)
    click_on "Destroy this printer", match: :first

    assert_text "Printer was successfully destroyed"
  end
end
