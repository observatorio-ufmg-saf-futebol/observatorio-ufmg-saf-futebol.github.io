# Contas em Campo — site

Código-fonte do site [contasemcampo.github.io](https://contasemcampo.github.io/), feito com [Quarto](https://quarto.org/).

| Caminho | Conteúdo |
|---|---|
| `index.qmd`, `dados.qmd`, `pesquisa.qmd`, `glossario.qmd`, `sobre.qmd` | Páginas em português |
| `coluna/posts/` | Textos da coluna *Do balanço à arquibancada* (uma pasta por texto) |
| `en/` | Versão em inglês (projeto Quarto próprio, publicado em `/en/`) |
| `_painel.qmd` | Painel interativo, compartilhado pelas duas línguas |
| `dados/` | Painel, dicionário e erratas copiados do repositório de dados pelo script de exportação |
| `theme/` | Cores, tipografia e estilos (claro e escuro) |

O manual de operação do projeto (atualizar a base, publicar textos, registrar
artigos) está em `docs/MANUTENCAO.md`, no repositório privado de dados.

## Renderizar localmente

```bash
./construir.sh          # gera _site/ (português + inglês)
quarto preview          # pré-visualização ao vivo, só português
```

## Publicar um texto novo na coluna

1. Crie `coluna/posts/AAAA-MM-tema/index.qmd` copiando um texto existente.
2. Preencha `title`, `description`, `date` e `categories` no cabeçalho.
3. Para traduzir, crie o equivalente em `en/column/posts/` e ligue as duas versões com um link no topo.
4. Faça *commit* e *push*: o site é republicado sozinho.

Textos sob licença CC BY-NC 4.0. Código sob licença MIT.
