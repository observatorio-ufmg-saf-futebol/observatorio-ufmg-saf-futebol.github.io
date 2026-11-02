#!/usr/bin/env bash
# Renderiza o site completo em _site/: primeiro o português (raiz),
# depois o inglês (en/), que é gravado em _site/en.
# A ordem importa: a renderização da raiz limpa _site/.
set -euo pipefail
cd "$(dirname "$0")"
quarto render
quarto render en
touch _site/.nojekyll
echo "Site pronto em _site/"
