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
    };

    config = {
      plugins = {
        betterFolders.enable = true;
        betterSettings.enable = true;
        betterSessions.enable = true;
        betterUploadButton.enable = true;
        characterCounter.enable = true;
        webContextMenus.enable = true;

        clearUrls.enable = true;
        noTrack.enable = true;
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
