#!/bin/sh

 if hash code 2>/dev/null; then
  echo -e "\\n\\nInstalling VSCode extensions"
  echo "=============================="
  code --install-extension adrianhumphreys.silverstripe
  code --install-extension alefragnani.Bookmarks
  code --install-extension ban.spellright
  code --install-extension esbenp.prettier-vscode
  code --install-extension formulahendry.auto-close-tag
  code --install-extension HookyQR.beautify
  code --install-extension jeremyrajan.vscode-lebab
  code --install-extension mblode.pretty-formatter
  code --install-extension MehediDracula.php-namespace-resolver
  code --install-extension mgmcdermott.vscode-language-babel
  code --install-extension mjmcloug.vscode-elixir
  code --install-extension mrmlnc.vscode-apache
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension neilding.language-liquid
  code --install-extension PKief.material-icon-theme
  code --install-extension robinbentley.sass-indented
  code --install-extension ronnidc.nunjucks
  code --install-extension silvenon.mdx
  code --install-extension sleistner.vscode-fileutils
  code --install-extension vincaslt.highlight-matching-tag
  code --install-extension yzhang.markdown-all-in-one
  code --install-extension zhuangtongfa.material-theme
else
  echo -e "\\n\\n The VSCode cli is not installed."
fi