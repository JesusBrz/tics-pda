module PrintersHelper

  def has_color(printer)
    return true if printer.chr == "M"
  end
end
