def CIgetcommit()
  return 'TRAVISCOMMIT'
end
def CIgetbuild()
  return 'TRAVISBUILD'
end
def getCIstring()
  return CIgetbuild() + '/' + CIgetcommit()
end
