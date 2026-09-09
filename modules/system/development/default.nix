{ den, ... }:
{
  den.aspects.base = {
    includes = with den.aspects; [
      opencode
      devenv
    ];
  };
}

