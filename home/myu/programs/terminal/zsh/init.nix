{
  programs.zsh.initContent = ''
    bindkey "^ " autosuggest-accept
    bindkey "^H" backward-kill-word

    function init() {
      bindkey "^K" history-substring-search-up
      bindkey -M vicmd "^K" history-substring-search-up
      bindkey "^J" history-substring-search-down
      bindkey -M vicmd "^J" history-substring-search-down
    }

    zvm_after_init_commands+=(init)

    function zvm_after_lazy_keybindings() {
      bindkey -M vicmd "L" end-of-line
      bindkey -M vicmd "H" beginning-of-line
      bindkey -M vicmd "dd" kill-whole-line
    }

    precmd() {
      precmd() {
        echo
      }
    }
  '';
}
