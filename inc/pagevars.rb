module Pagevars
  begin
    require_relative 'builddata'
  rescue
    raise "Missing builddata file"
  end
  def Pagevars.setVars(pageTitle)
    @PageTitle = pageTitle
    @TRAVISBUILDNUMBER = Builddata.getCIstring()
  end
end
