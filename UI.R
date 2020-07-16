UI=shinyUI(
	fluidPage(id="main_fluid",
		title="AOLRC",
		tags$head(
        		tags$style(HTML("
					.navbar-default .navbar-brand {color: black;font-size:25px;}
					.navbar {border-radius: 10px;}
        			.navbar { background-color:white; box-shadow: 0 2px 2px -2px rgba(0,0,0,0.2);}
					.navbar .navbar-nav {float: right}
         			.navbar .navbar-title {float: left;}
        			* { font-family: Helvetica, Arial; }
        		"))
      	),
		navbarPage("The AR-OK-LA Rice Consortium (AOLRC)",
			tabPanel("Members",
    			column(4,
					includeMarkdown("figure.Rmd")
				),
				column(8,
					includeMarkdown("participants.Rmd")
				)
  			),
  			tabPanel("Overview",
  				includeMarkdown("overview.Rmd")
  			),
  			tabPanel("Resources",
  				includeMarkdown("resources.Rmd")
  			),
  			navbarMenu("Outcomes",
    			tabPanel("Year 1",
    			),
    			tabPanel("Year 2",
      				fluidRow(
        				
          					includeMarkdown("year2.Rmd")
        				
      				)
      				
    			)
  			)
		)#end navbar
	)#end of fluid page		
)#end of shinyUI
