{inputs, den, ...}: {

  _module.args.__findfile = den.lib.__findfile;
  
  imports = [
    (inputs.flake-file.flakeModules.dendritic or {})
    (inputs.den.flakeModules.dendritic or {})
  ];
}
