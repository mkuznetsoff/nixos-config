{ pkgs, ...}: {
  
  programs.ncmpcpp = {
    enable = true;
    settings = {
      ncmpcpp_directory = "~/.config/ncmpcpp";
      lyrics_directory = "~/.local/share/lyrics";
      message_delay_time = "1";
      song_list_format = "{$4%a - }{%t}|{$8%f$9}$R{$3(%l)$9}";
      song_status_format = "$b{{$8%t}} $3by {$4%a{ $3in $7%b{ (%y)}} $3}|{$8%f}";
      song_library_format = "{%n - }{%t}|{%f}";
      alternative_header_first_line_format = "$b$1$aqqu$/a$9 {%t}|{%f} $1$atqq$/a$9$/b";
      alternative_header_second_line_format = "{{$4$b%a$/b$9}{ - $7%b$9}{ ($4%y$9)}}|{%D}";
      current_item_prefix = "$(cyan)$r$b";
      current_item_suffix = "$/r$(end)$/b";
      current_item_inactive_column_prefix = "$(magenta)$r";
      current_item_inactive_column_suffix = "$/r$(end)";
      playlist_display_mode = "columns";
      browser_display_mode = "columns";
      progressbar_look = "->";
      media_library_primary_tag = "album_artist";
      media_library_albums_split_by_date = "no";
      startup_screen = "media_library";
      display_volume_level = "no";
      ignore_leading_the = "yes";
      external_editor = "nvim";
      use_console_editor = "yes";
      empty_tag_color = "magenta";
      main_window_color = "white";
      progressbar_color = "black:b";
      progressbar_elapsed_color = "blue:b";
      statusbar_color = "red";
      statusbar_time_color = "cyan:b";
    };

    bindings = [
      { key = "j"; command = "scroll_down"; }
      { key = "k"; command = "scroll_up"; }
      { key = "J"; command = [ "select_item" "scroll_down" ]; }
      { key = "K"; command = [ "select_item" "scroll_up" ]; }
      { key = "="; command = "volume_up"; }
      { key = "ctrl-u"; command = "page_up"; }
      { key = "ctrl-d"; command = "page_down"; }
      { key = "u"; command = "page_up"; }
      { key = "d"; command = "page_down"; }
      { key = "h"; command = "previous_column"; }
      { key = "l"; command = "next_column"; }
      { key = "n"; command = "next_found_item"; }
      { key = "U"; command = "update_database"; }
      { key = "x"; command = "delete_playlist_items"; }
    ];

  };


}
