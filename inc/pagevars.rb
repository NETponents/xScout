module Pagevars
  require_relative 'builddata'
  def Pagevars.setVars(pageTitle)
    @PageTitle = pageTitle
    @TRAVISBUILDNUMBER = getCIstring()
  end
end
