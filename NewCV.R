library(rsconnect)
library(shinydashboard)
rsconnect::setAccountInfo(name='tiankangxie',
                          token='8EFE56CA21388238D11939516387EFDC',
                          secret='RCPjWqkRhpd5RHok2HMUzeDNroO0/BXMWUk//b5y')
#setwd("C:\\Users\\ssxxz\\Documents\\shinyapps\\app1")
ui <- dashboardPage(
  dashboardHeader(title = "Welcome!"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Personal Info", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Research Interests", tabName = "widgets1",icon = icon("th")),
      menuItem("Past Research", tabName = "widgets", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
              tags$img(src = "img1.jpg",height = 300, width = 450),
              tags$h2("Welcome to Tiankang's Space"),
              tags$hr(style = "border-color: blue;"),
              tags$p(tags$p("My name is Tiankang Xie. This is my virtual space and I'm glad that you found it")),
              tags$h2("About Me"),
              tags$hr(style = "border-color: red;"),
              tags$p("Some of my general interests include:"),
              tags$ul(
                tags$li("Mathematical Algorithmic Design"),
                tags$li("Computational Genomics"),
                tags$li("Machine Learning"), 
                tags$li("Image Analysis"),
                tags$li("Russian Literature"),
                tags$li("Badminton")
              ),
              tags$h2("Contact"),
              tags$hr(style = "border-color: black;"),
              tags$p("Office: 6730 MSC"),
              tags$p("Email: txie25@wisc.edu"),
              tags$h2("Education:"),
              tags$hr(style = "border-color: green;"),
              tags$ul(
                tags$li("Gradudate Student 2018  Quantitative Biology Sciences, Dartmouth College"),
                tags$li("B.S. 2018   Mathematics & Statistics, ",tags$a(href = "www.wisc.edu","University of Wisconsin-Madison")),
                tags$li("High School Diploma. 2014, ",tags$a(href = "https://www.szzx1000.com", "Suzhou High School of Jiangsu Province"))
              ),
              tags$h2("Personal Resume"),
              tags$hr(style = "border-color: orange;"),
              tags$a(href="https://drive.google.com/open?id=1hkGkiUYPqGvumT8ympVlpALcHI6vhP0w","My CV")
              
      ),
      tabItem(tabName = "widgets1",
              h2("General Statement"),
              tags$hr (style = "border-color: red;"),
              tags$ul(
                tags$li("I am still exploring interesting Applied Mathematics/Applied Statistics topics. I am always open to all kinds of new ideas. I like to solve problems from a Mathematical/Statistical view with proof-based models and techniques"),
                tags$br(),
                tags$li("An important part of my current research goal is to also to develop computational algorithms to more efficiently perform statistical calculations on large data sets. I have realized that a significant bottleneck for current genomic studies is that data size is too large and is too time-consuming. It is wasteful to take in the whole gigantic dataset only aiming to get some basic statistics. If we only want the statistical properties we can cleverly utilize Mathematical projections or Mathematical algorithms to speed up the calculations.")
              )
              ),

      # Second tab content
      tabItem(tabName = "widgets",
              h2("Undergraduate Research"),
              tags$hr(style = "border-color: green;"),
              tags$ul(
                tags$li("Mathematical Algorithm Designs"),
                tags$li("Image Analysis"),
                tags$li("Topological tools for data analysis")
              ),
              tags$p("Mentor for B.S:  Prof. Moo. K Chung"),
              tags$p(tags$a(href="http://www.stat.wisc.edu/~mchung/","See what my mentor is doing!")),
              tags$p(tags$a(href="https://drive.google.com/open?id=1LP70EbNywAm3DFcNl9y9vAgN2xgSFowf","See my Research Paper for Mathematical tools"),
                   
              tags$h2("Graduate Research"),
              tags$hr(style = "border-color: orange;"),
              tags$ul(
                tags$li("Cancer genomics, especially DNA methylation")
              )
                     
                     )
      )
    )
  )
)

server <- function(input, output) {

}

shinyApp(ui, server)
#deployApp()
