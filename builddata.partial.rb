module Builddata
  def Builddata.CIgetcommit()
    return 'TRAVISCOMMIT'
  end
  def Builddata.CIgetbuild()
    return 'TRAVISBUILD'
  end
  def Builddata.getCIstring()
    return CIgetbuild() + '/' + CIgetcommit()
  end
end
