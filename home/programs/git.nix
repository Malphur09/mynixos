{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "malphur";
        email = "147007302+Malphur09@users.noreply.github.com";
      };

      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}
