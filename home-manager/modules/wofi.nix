{ lib, ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      allow_markup = true;
      allow_images = true;
      width = 350;
      height = 450;
    };
    style = lib.mkForce ''
      window {
        margin: 0px;
        border: 5px solid;
      }
      
      #input {
        margin: 5px;
        border: none;
      }

      #inner-box {
        margin: 5px;
        border: none;
      }
      
      #outer-box {
        margin: 5px;
        border: none;
      }
      
      #scroll {
        margin: 0px;
        border: none;
      }
      
      #text {
        margin: 5px;
        border: none;
      }
      
    '';
  };
}
