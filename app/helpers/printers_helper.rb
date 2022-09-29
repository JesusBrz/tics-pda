module PrintersHelper

  def has_color(printer)
    return true if printer[2] == "C"
  end
end
