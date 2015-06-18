module Pagevars
  begin
    require_relative 'builddata'
  rescue
    raise "Missing builddata file"
  end
  def Pagevars.setVars(vname)
    if vname == "CIbuild"
      return Builddata.getCIstring()
    else
      return "Error"
    end
  end
end
