def import_non_local(name):
  import imp, sys

  f, pathname, desc = imp.find_module(name, sys.path[1:])
  module = imp.load_module(name, f, pathname, desc)
  f.close()

  return module
