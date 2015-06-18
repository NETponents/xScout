module API
  require_relative "pagevars"
  def API.processCMD()
    return "The API is online"
  end
  def API.processCMD(cmd)
    if cmd == "version"
      return Pagevars.setVars("CIbuild")
    else
      return "404 API call not found"
    end
  end
end
