module Pagevars
  require_relative 'builddata'
  def setVars(pageTitle)
    @PageTitle = pageTitle
    @TRAVISBUILDNUMBER = getCIstring()
  end
end
