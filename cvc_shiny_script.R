#install.packages("plotly")
#install.packages("shinyWidgets")
#library('plotly')

#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Creating my tables for ShinyOutput

District <- c(01,05,07,08,09,11,13,14,17)
vessel_type_is_general <- c(685,269,476,590,245,228,222,298,171)
tonage_is_missing <- c(65,6,6,13,9,19,12,5,0)
vessel_class_is_incorrect <-c(7,7,9,126,2,11,6,4,7)
route_stability_is_missing<-c(121,89,41,316,32,52,135,47,25)

table1 <- data.frame(District, vessel_type_is_general, tonage_is_missing, vessel_class_is_incorrect, route_stability_is_missing)

District <- c(01,05,07,08,09,11,13,14,17)
vessel_type_is_general <- c(18,4,6,202,0,2,7,0,3)
tonage_is_missing <- c(1,5,1,10,2,0,6,1,0)
vessel_class_is_incorrect <-c(3,4,5,68,0,6,1,2,0)
route_stability_is_missing<-c(4,6,1,114,2,0,1,0,0)

table2 <- data.frame(District, vessel_type_is_general, tonage_is_missing, vessel_class_is_incorrect, route_stability_is_missing)

District <- c(01,05,07,08,09,11,13,14,17)
vessel_type_is_general <- c(188,8,399,377,59,3,18,63,3)
tonage_is_missing <- c(5,4,5,10,5,1,6,5,0)
vessel_class_is_incorrect <-c(6,6,10,110,2,6,2,2,3)
route_stability_is_missing<-c(14,30,32,198,12,0,102,41,1)

table3 <- data.frame(District, vessel_type_is_general, tonage_is_missing, vessel_class_is_incorrect, route_stability_is_missing)


District <- c(01,05,07,08,09,11,13,14,17)
vessel_type_is_general <- c(14,7,5,191,1,3,14,1,1)
tonage_is_missing <- c(3,5,1,9,3,1,6,1,0)
vessel_class_is_incorrect <-c(2,6,9,69,1,6,3,2,2)
route_stability_is_missing<-c(6,7,4,116,3,0,90,0,0)

table4 <- data.frame(District, vessel_type_is_general, tonage_is_missing, vessel_class_is_incorrect, route_stability_is_missing)

District <- c(01,05,07,08,09,11,13,14,17)

--- recreate the dataframes so they just have the current data 
## Could Loop This
SPVs_D1_revised <- SPVs_D1 %>% filter(Date=='Current')
SPVs_D1_VTIG <-SPVs_D1_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D1_TIMI <-SPVs_D1_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D1_VCII <-SPVs_D1_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D1_RSIM <-SPVs_D1_revised %>% filter(Error_type == 'route_stability_is_missing')


SPVs_D5_revised <- SPVs_D5 %>% filter(Date=='Current')
SPVs_D5_VTIG <-SPVs_D5_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D5_TIMI <-SPVs_D5_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D5_VCII <-SPVs_D5_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D5_RSIM <-SPVs_D5_revised %>% filter(Error_type == 'route_stability_is_missing')


SPVs_D7_revised <- SPVs_D7 %>% filter(Date=='Current')
SPVs_D7_VTIG <-SPVs_D7_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D7_TIMI <-SPVs_D7_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D7_VCII <-SPVs_D7_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D7_RSIM <-SPVs_D7_revised %>% filter(Error_type == 'route_stability_is_missing')


SPVs_D8_revised <- SPVs_D8 %>% filter(Date=='Current')
SPVs_D8_VTIG <-SPVs_D8_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D8_TIMI <-SPVs_D8_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D8_VCII <-SPVs_D8_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D8_RSIM <-SPVs_D8_revised %>% filter(Error_type == 'route_stability_is_missing')


SPVs_D9_revised <- SPVs_D9 %>% filter(Date=='Current')
SPVs_D9_VTIG <-SPVs_D9_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D9_TIMI <-SPVs_D9_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D9_VCII <-SPVs_D9_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D9_RSIM <-SPVs_D9_revised %>% filter(Error_type == 'route_stability_is_missing')

SPVs_D11_revised <- SPVs_D11 %>% filter(Date=='Current')
SPVs_D11_VTIG <-SPVs_D11_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D11_TIMI <-SPVs_D11_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D11_VCII <-SPVs_D11_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D11_RSIM <-SPVs_D11_revised %>% filter(Error_type == 'route_stability_is_missing')

SPVs_D13_revised <- SPVs_D13 %>% filter(Date=='Current')
SPVs_D13_VTIG <-SPVs_D13_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D13_TIMI <-SPVs_D13_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D13_VCII <-SPVs_D13_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D13_RSIM <-SPVs_D13_revised %>% filter(Error_type == 'route_stability_is_missing')

SPVs_D14_VTIG$Error <-as.integer(0)
SPVs_D14_TIMI$Error <-as.integer(0)
SPVs_D14_VCII$Error <-as.integer(0)
SPVs_D14_RSIM$Error <-as.integer(0)

##SPVs_D14_revised <- SPVs_D14 %>% filter(Date=='Current')
##SPVs_D14_VTIG <-SPVs_D14_revised %>% filter(Error_type == 'vessel_type_is_general')
##SPVs_D14_TIMI <-SPVs_D14_revised %>% filter(Error_type == 'tonage_is_missing')
##SPVs_D14_VCII <-SPVs_D14_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
##SPVs_D14_RSIM <-SPVs_D14_revised %>% filter(Error_type == 'route_stability_is_missing')

SPVs_D17_revised <- SPVs_D17 %>% filter(Date=='Current')
SPVs_D17_VTIG <-SPVs_D17_revised %>% filter(Error_type == 'vessel_type_is_general')
SPVs_D17_TIMI <-SPVs_D17_revised %>% filter(Error_type == 'tonage_is_missing')
SPVs_D17_VCII <-SPVs_D17_revised %>% filter(Error_type == 'vessel_class_is_incorrect')
SPVs_D17_RSIM <-SPVs_D17_revised %>% filter(Error_type == 'route_stability_is_missing')

SPVs_D17_VTIG$Error
SPVs_D17_TIMI$Error
SPVs_D17_VCII$Error
SPVs_D17_RSIM$Error


vessel_type_is_general <- c(SPVs_D1_VTIG$Error, SPVs_D5_VTIG$Error, SPVs_D7_VTIG$Error, SPVs_D8_VTIG$Error, SPVs_D9_VTIG$Error, SPVs_D11_VTIG$Error, SPVs_D13_VTIG$Error, 0, SPVs_D17_VTIG$Error)
tonage_is_missing <- c(SPVs_D1_TIMI$Error, SPVs_D5_TIMI$Error, SPVs_D7_TIMI$Error, SPVs_D8_TIMI$Error, SPVs_D9_TIMI$Error, SPVs_D11_TIMI$Error, SPVs_D13_TIMI$Error, 0, SPVs_D17_TIMI$Error)
vessel_class_is_incorrect <-c(SPVs_D1_VCII$Error, SPVs_D5_VCII$Error, SPVs_D7_VCII$Error, SPVs_D8_VCII$Error, SPVs_D9_VCII$Error, SPVs_D11_VCII$Error, SPVs_D13_VCII$Error, 0, SPVs_D17_VCII$Error)
route_stability_is_missing<-c(SPVs_D1_RSIM$Error, SPVs_D5_RSIM$Error, SPVs_D7_RSIM$Error, SPVs_D8_RSIM$Error, SPVs_D9_RSIM$Error, SPVs_D11_RSIM$Error, SPVs_D13_RSIM$Error, 0, SPVs_D17_RSIM$Error)

table5 <- data.frame(District, vessel_type_is_general, tonage_is_missing, vessel_class_is_incorrect, route_stability_is_missing)


row.names(table1) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')
row.names(table2) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')
row.names(table3) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')
row.names(table4) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')
row.names(table5) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')


# row.names(table1) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')
# row.names(table2) <- c('District1','District5','District7','District8','District9','District11','District13','District14','District17')

#loading the Necessary Packages for this Shiny Output


# table1<-read.csv("SPVs_Errors_9_2020.csv")
# table2<-read.csv("SPV_recent_II.csv")
# table3<-read.csv("SPVs_12_6.csv")
# table4<-read.csv("SPVs_2_26.csv")
# table5<-read.csv("SPVs_4_21.csv")

ui <- fluidPage(
  setBackgroundColor(
    color = c("#F7FBFF", "#2171B5"),
    gradient = "linear",
    direction = "bottom"
  ),
  
  titlePanel( h1("SPV ERROR CHARTS", align="center")),
  ( sidebarLayout( fluidRow(sidebarPanel(
    uiOutput("Data1"), 
    uiOutput("Data2"), 
    uiOutput("column1") )),
    mainPanel( fluidRow(
      align = "center"
      
    ), width = 12,
    plotlyOutput("maingraph1")
    )))
)
server <- function(input,output, session){
  # selectInput function to select one table from the list of Points Given tables
  output$Data1 <- renderUI({
    selectInput("dataTables", label = "Select a Table(2020)", choices = c("SPV Errors 9/2020", "SPV Errors 12/2020"))
  })
  # reactive environment to map the selected table name with actual dataframe(i.e, points given)
  Data_to_display_Tab1 <- reactive({
    if (input$dataTables == "SPV Errors 9/2020") {
      df1 <- table1
    } else if (input$dataTables == "SPV Errors 12/2020") {
      df1 <- table3
    } else df1 <- table3
    return(df1)
  })
  # Another selectInput function to select a table from the list of Points Used
  output$Data2 <- renderUI({
    selectInput(inputId = "dataTables2", label = "Select a Table(2021)", choices = c("SPV Errors 2/2021", "SPV Errors 6/2021", "SPV Errors Current"))
  })
  # reactive environment to map the selected table name with actual dataframe(i.e, points used)
  Data_to_display_Tab2 <- reactive({
    if (input$dataTables2 == "SPV Errors 2/2021") {
      df2 <- table4
    } else if (input$dataTables2 == "SPV Errors 6/2021") {
      df2 <- table2
    } else if (input$dataTables2 == "SPV Errors Current") {
      df2 <- table2
    } else df2 <- table2
    return(df2)
  })
  # selectInput function to display variable names of selected table from previous selectInput
  output$column1 <- renderUI({
    selectInput(inputId = "columnNames", label = "Select a Variable", choices = names(Data_to_display_Tab1()[,-c(6)]), selected = "vessel_type_is_general")
  })
  # Plotly code
  output$maingraph1 <- renderPlotly({
    plot_ly(Data_to_display_Tab1(), x = c('District01','District05','District07','District08','District09','District11','District13','District14','District17'), y = Data_to_display_Tab1()[[input$columnNames]], type = 'bar', name = 'Error Rates in 2020') %>%
      add_trace( x = c('District01','District05','District07','District08','District09','District11','District13','District14','District17'), y = Data_to_display_Tab2()[[input$columnNames]], name = 'Error Rates in 2021') %>%
      layout(xaxis = list(title = "District"), yaxis = list(title = input$columnNames), barmode = 'group')
  })
}
shinyApp(ui = ui, server = server)
# Define UI for application that draws a histogram

#Data_to_display_Tab2()["District"]
