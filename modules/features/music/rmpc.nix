{ den, ... }:
{
  den.aspects.rmpc = {
    includes = with den.aspects; [ mpd ];
    homeManager.programs.rmpc = {
      enable = true;
    };
  };
}
