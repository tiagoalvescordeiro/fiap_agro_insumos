# FIAP Agro Insumos

Aplicação acadêmica desenvolvida em **R com Shiny** e **Jupyter Notebook (Google Colab)** para cálculo de **insumos agrícolas** utilizados na plantação de **soja**. O sistema também calcula **estatísticas básicas** dos insumos com base na área informada pelo usuário.

---

## Objetivo do Projeto

- Simular um sistema de apoio ao produtor rural.
- Calcular de forma automática os insumos necessários com base na área.
- Analisar estatísticas simples como média, desvio padrão, mínimo e máximo.
- Desenvolver um projeto colaborativo com versionamento no GitHub.

---

## Como executar o app em R (Shiny)

1. Baixe o arquivo `app.R` deste repositório.
2. Abra no **RStudio**.
3. Clique em **"Run App"**.
4. Digite a área plantada (em m²) e visualize os resultados dos insumos e estatísticas.

---

## Como rodar no Google Colab (Jupyter Notebook)

1. Acesse o Google Colab: [https://colab.research.google.com](https://colab.research.google.com)
2. Faça upload do arquivo `aplicacao_insumos_agricultura.ipynb`.
3. Execute os blocos em sequência:
   - Instalação do rpy2
   - Carregamento do ambiente R
   - Cálculos e estatísticas

---

## Exemplo de Entrada

Área: **10.000 m²**

## Exemplo de Saída

- Calcário: 1000 Kg  
- Gesso: 500 Kg  
- Fosfato: 20 Kg  
- Potássio: 20 Kg  
- Água: 40.000 Litros/dia

**Estatísticas:**
- Média: 8.708 Kg/L
- Desvio Padrão: 17.750
- Máximo: 40.000
- Mínimo: 20

---

## Estrutura do Projeto

- `app.R`: aplicação com interface Shiny.
- `aplicacao_insumos_agricultura.ipynb`: versão em notebook para Google Colab.
- `README.md`: este arquivo, com instruções e explicações.
