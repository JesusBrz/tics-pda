module PrintersHelper
  def has_color(printer)
    return true if printer[2] == "C"
  end
  def in_range(printer)
    host_id = printer.split(".")
    return true if host_id[3].to_i.between?(245, 254)
  end
end
