library(shiny)

formatar_numero <- function(valor) {
  format(round(valor, 2), nsmall = 2)
}

calcular_insumos_soja <- function(area_util_m2) {
  insumos <- list(
    Calcario = 0.1,
    Gesso = 0.05,
    Fosfato = 0.002,
    Potassio = 0.002,
    Nitrogenio = 0,
    Herbicida = 0.01,
    Fungicida = 0.01,
    Inseticida = 0.005,
    Agua = 4
  )
  
  resultado <- lapply(insumos, function(valor) formatar_numero(valor * area_util_m2))
  unidades <- c("Kg", "Kg", "Kg", "Kg", "Kg", "L", "L", "L", "L/dia")
  names(resultado) <- names(insumos)
  for (i in seq_along(resultado)) {
    resultado[[i]] <- paste0(resultado[[i]], " ", unidades[i])
  }
  return(resultado)
}

calcular_estatisticas <- function(insumos_lista) {
  valores <- sapply(insumos_lista, function(x) as.numeric(gsub(",", ".", gsub("[^0-9,\\.]", "", x))))
  estatisticas <- list(
    Média = formatar_numero(mean(valores)),
    Desvio_Padrão = formatar_numero(sd(valores)),
    Mínimo = formatar_numero(min(valores)),
    Máximo = formatar_numero(max(valores))
  )
  return(estatisticas)
}

ui <- fluidPage(
  titlePanel("Calculadora de Insumos para Soja"),
  sidebarLayout(
    sidebarPanel(
      numericInput("area", "Área útil (m²):", value = 10000, min = 1),
      actionButton("calcular", "Calcular")
    ),
    mainPanel(
      h4("Insumos Calculados"),
      tableOutput("resultado_insumos"),
      h4("Estatísticas dos Insumos"),
      tableOutput("resultado_estatisticas")
    )
  )
)

server <- function(input, output) {
  resultado <- eventReactive(input$calcular, {
    calcular_insumos_soja(input$area)
  })
  estatisticas <- reactive({
    if (is.null(resultado())) return(NULL)
    calcular_estatisticas(resultado())
  })
  output$resultado_insumos <- renderTable({
    res <- resultado()
    if (is.null(res)) return()
    data.frame(Insumo = names(res), Quantidade = unlist(res))
  })
  output$resultado_estatisticas <- renderTable({
    est <- estatisticas()
    if (is.null(est)) return()
    data.frame(Estatística = names(est), Valor = unlist(est))
  })
}

shinyApp(ui = ui, server = server)
