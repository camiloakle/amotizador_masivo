fluidPage(theme = shinytheme("flatly"),
          style = "padding:0px;",
  navbarPage(title = div(img(src="favicon_4.png"),
                         "App Amortizador",href = "https://google.com", style = "color:white;"),
  tabPanel(icon = icon("calendar"), title = "Detalle Unitario",useShinyjs(),
                      sidebarLayout(
                        sidebarPanel(numericInput(max = 30,
                                     label = "Años Credito",
                                     min = 1,inputId = "anos",value = 10),
                                     numericInput(inputId = "15intereses",label = "Intereses E.A",value = 1,step = 0.01),
                                     sliderInput(inputId = "intereses",
                                                 label = "Intereses E.A",
                                                 value = 1,post = "%",max =100,min = 0.1,step = 0.001)),
                        
         mainPanel()
         )),tabPanel(icon = icon("calculator"),title = "Amortizaciones Masivas",
                      sidebarLayout(
                        sidebarPanel(numericInput(max = 30,
                                                  label = "Años Credito 2",
                                                  min = 1,inputId = "anos",value = 10)),
                        
                        mainPanel(
                          
                        )))))