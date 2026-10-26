{ inputs, ... }:

{
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];

  programs.nixcord = {
    enable = true;

    discord = {
      enable = true;
      equicord.enable = true;
      krisp.enable = true;

      branches = [ "stable" ];

    };

    config = {
      frameless = true;
      useQuickCss = false;

      plugins = {
        betterFolders.enable = true;
        betterSettings.enable = true;
        betterSessions.enable = true;
        betterUploadButton.enable = true;
        characterCounter.enable = true;
        webContextMenus.enable = true;

        clearUrls.enable = true;
        noTrack.enable = false;
        silentTyping.enable = true;
        disableCallIdle.enable = true;

        fixImagesQuality.enable = true;
        noNitroUpsell.enable = true;
        noTypingAnimation.enable = true;
        fakeNitro.enable = true;

        messageLogger.enable = true;
      };
    };
  };
}
