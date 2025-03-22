# FIAP Agro Insumos Aplicação em **R com Shiny** para cálculo de insumos agrícolas voltados à cultura da **soja**, com base na área plantada informada pelo usuário. O sistema também calcula **estatísticas básicas** como média, desvio padrão, mínimo e máximo dos insumos utilizados. --- ## Objetivos do Projeto - Simular um sistema de apoio à decisão para o produtor rural. - Automatizar o cálculo de insumos com base em parâmetros técnicos. - Integrar análise estatística simples para monitoramento de consumo. - Desenvolver um projeto em equipe, com versionamento via **GitHub**. --- ## Tecnologias Utilizadas - **R** e **Shiny** (interface web) - Versionamento com **Git e GitHub** - Colaboração simulada com branches, commits e histórico --- ## Como usar 1. Faça o clone deste repositório: ```bash git clone https://github.com/seu_usuario/fiap_agro_insumos.git 
• Abra o arquivo app.R no RStudio.
• Clique em "Run App" para iniciar a aplicação.
• Insira a área útil da fazenda (em m²) no campo indicado.
• Veja os insumos necessários para a plantação de soja e as estatísticas calculadas com base nos valores.
Estrutura da aplicação
• app.R: código principal com interface Shiny.
• README.md: explicação do projeto, instalação e uso.
• (opcional) R/: pasta para organizar funções por módulo.
Exemplo de Funcionamento
Entrada:
Área útil = 10.000 m²
Saída esperada:
• Calcário: 1.000 Kg
• Gesso: 500 Kg
• Fosfato: 20 Kg
• ...
• Média dos insumos: XXX
• Desvio padrão: YYY