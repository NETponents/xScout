module API
  require_relative "pagevars"
  def processCMD(cmd)
    if cmd == ""
      return "The API is online"
    elsif cmd == "version"
      return Pagevars.setVars("CIbuild")
    else
      return "404 API call not found"
    end
  end
end
