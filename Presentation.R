library(sidescroller)
library(here)


pres <- sidescroller(
  list(
    htmltools::htmlDependency(
      name = "darker-grotesque",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css?family=Darker+Grotesque&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "fontts",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css2?family=Gruppo&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "font-awesome",
      version = "4.7.0",
      src = c(href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/"),
      stylesheet = "font-awesome.min.css"),
  htmltools::htmlDependency(
    name = "RStudio_pres",
    version = "1.0",
    src = c(href = "www"),
    script = c("rstudio_conf_2020.js","prism.js"),
    stylesheet = c("RStudio_conf_2020.css","prism.css"))))

## Title ----
pres_title <- pres %>% 
  title_slide(
    title = tags$div(style = "font-weight:200","R Package Validation Framework"),
    subtitle = list("Ellis Hughes",
                 HTML(paste0(
                   "<p class='subtitle_text'>",
                   "<i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none; color: white' class='fa fa-twitter'></i> @ellis_hughes",
                   "</p>",
                   "<p class='subtitle_text'>",
                   "<i href = 'https://github.com/thebioengineer' style = 'text-decoration: none; color: white' class='fa fa-github'></i> thebioengineer",
                   "</p>")),
                 "Fred Hutch Cancer Research Center - SCHARP - VISC"
                 ),
    style = "font-family: 'Darker Grotesque',Arial;
    font-size: 40px;
    font-weight: 300;
    background-image: url(img/title_background.jpeg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;"
  )

# ## Bio ----
pres_bio <- pres_title %>%
  slide_markdown(title = tags$div(style = 'width:500px',"Ellis Hughes"),"
      <div style = 'height:100%'>
        <div style = 'display:inline-block; vertical-align: top; padding-right:20px; font-size: 45px;margin-left: 50px;'>
        - <span style='font-weight: bold;'>Statistical Programmer</span>
           - Statistical Genetics
           - HIV Vaccine Research
        <br>
        - <span style='font-weight: bold;'>Community</span>
          - Seattle UseR Organizer
          - TidyX Screencast
          
        <ul>
        <li><p><i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none; color: white' class='fa fa-twitter'></i> @ellis_hughes</p></li>
        <li><p><i href = 'https://github.com/thebioengineer' style = 'text-decoration: none; color: white' class='fa fa-github'></i> thebioengineer</p></li>
        </ul> 
        
        </div>
        <div style = 'display:inline-block;height:inherit;'>
         <img src = 'https://thebioengineer.github.io/images/r_in_pharma/img/ellis_hughes.jpg' style = '-webkit-transform: rotate(90deg);
                 -moz-transform: rotate(90deg);
                 -o-transform: rotate(90deg);
                 -ms-transform: rotate(90deg);
                 transform: rotate(90deg);
                 height: 350px;
                 margin: 100px;'/>
         <img src='img/logos/scharp.png' style='max-width: 350px;margin: auto;'/>       
        </div>
      </div>", style = "margin-top:50px")
    
### Intro to the Pain ----

pres_val_explained <- pres_bio %>% 
  
  slide_multipanel(title = NULL,
                   
  panel(tags$div(tags$div(style = "font-weight:200;margin:auto;font-size: 80px",
      p("What is Computer System Validation?")),
      class = "center_content"), style = "width:1500px"),
  
  panel(tags$div( tags$div(markdown_to_html("
  Establishing documentary evidence that your software performs a
  
    - Procedure
    - Process
    - Activity
  
  in compliance with specifications with a high degree of assurance.
  ")),class = "center_content"), style = "margin-top: 100px"),
  
  panel(tags$div(tags$div(markdown_to_html("
  Typical Answer
  
  - Required for FDA submission
  
  - <span style = 'color:orange'>21 CFR 11</span>
  
  - General Principles of Software Validation (FDA 2002)
  "), style = "margin-top:50px"),class = "center_content"),
  style = "width: 1000px; margin-top: 100px;" ),  
        
  panel(tags$div(tags$div(markdown_to_html("
  Unspoken Benefits
  
  - Improved Quality and Safety
  
  - Results in Faster Processing
  
  - Promotes Trust
  "), style = "margin-top:50px"),class = "center_content"),style = "margin-top: 100px;"),

  style = "font-size: 50px;margin-top:100px;")

pres_pain <- pres_val_explained %>% 
  slide_multipanel(
    title = tags$div(style = 'width:500px',"Validation in Practice"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
        img(src = "img/jim_carrey_file.gif", style = "height:100%"),
        div( style = "bottom:0px;position:absolute",
        p("Tom Shadyac, et al. BRUCE ALMIGHTY. USA, 2003.", style = "font-size:20px;color:grey;margin-bottom:0px"),
        p("https://media1.tenor.com/images/3267a92e265348c0cc435a7989d65e23/tenor.gif", style = "font-size:20px;color:grey")
        )
  ))),
  
  panel(div(div(markdown_to_html("
  Fill out a form for specifications, planned uses, environments"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 100px; font-size: 50px; font-size: 45px; margin-right: 600px;"),
  
  panel(div(div(markdown_to_html("
  Write Code and record function authorship in some excel file"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),  
  style = "margin-top: 200px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Get another form to document test cases, testing environment, ..."), 
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 300px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Maybe the last form to show that testing plan is comprehensive"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 400px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Manually evaluate tests and screenshot results"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 500px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Review documentation, combine into final report and signoffs for release"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 600px; font-size: 45px; margin-left: -600px;"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
             img(src = "img/mario_game_over.gif", style = "height:100%"),
             div( style = "bottom:0px;position:absolute",
                  p("Super Mario Bros., Nintendo, 1985, NES", style = "font-size:20px;color:grey; margin-bottom:0px"),
                  p("source: https://gfycat.com/earnestgiganticdorado", style = "font-size:20px;color:grey")
             )
        )),
    style = "padding-left: 600px;padding-right: 600px;")
  )


## Intro To Validation ----

pres_friends <- pres_pain %>% 
  slide_multipanel(title = NULL,
                   
  panel(tags$div(
    tags$p("VALIDATION",style = "color: red; font-size: 250px; margin:auto; font-family: 'Gruppo', monospace;margin-top: 250px"),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin: auto;display: inline-flex; font-family: monospace;;margin-top: 200px",
             p("+", style = "font-size: 300px;margin-bottom:70px"),
             tags$img(src = "img/Rlogo.png",style = "height:300px;"), 
    ),
    class = "center_content")),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/step_brothers_best_friends.webp", style = "height:600px; margin:auto;"),
              div( style = "bottom:0px;position:absolute",
                  p("Adam Mckay, et al. STEP BROTHERS . USA, 2008.",style = "font-size:20px;color:grey;margin-bottom:0px;"),
                  p("https://bethgittings.tumblr.com/post/34641171446",style = "font-size:20px;color:grey")
                )),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin:auto;",
              tags$img(src = "img/rmarkdown_testthat_roxygen2.png", 
                       style = "height:600px; margin:auto;")
             ),
    class = "center_content")),
  
  panel(tags$iframe(src = "img/Validate.pdf?#zoom=140", style = "width: 1200px; height: 100%", frameborder="0", marginwidth="0"))
  
  )


## Validation ----
pres_val_elements <- pres_friends %>% 
  slide_multipanel(title = tags$div(style = 'width:800px',"R Package Validation Framework"),
  panel_markdown("
  
  <div style='font-size: 45px;margin-left: 20px;'>
  Steps to Validation
  
    - 1. Record Specifications
    
    - 2. Write Code
    
    - 3. Record Test Cases
    
    - 4. Write Test Case Code
    
    - 5. Generate Documentation
  
  </div>", style = "width:600px; margin-top: 140px;"),
  panel_markdown("
  Advantages
    
    - R package development process
    
    - Native to programmers
    
    - Satisfies requirements
    
    - Iterative development
    
    - Reusable
    
  ", style='font-size: 45px;margin-top:140px; '))




## Specifications ----
pres_val_specification <- pres_val_elements %>% 
  slide_multipanel(title = tags$div(style = 'width:700px',"Recording Specifications"),
  panel_markdown("
  - What is the thing?
  - What will the thing do?
  - What are the expected ouputs?
  - What are the high level steps that need to be followed?

  ", style = "font-size: 45px; margin-top: 140px;"),
  
  panel_markdown("
  
  ```
  - My presentation will 
    - The contents will cover my teams approach to validation
    - Be 15-20 minutes long
    - Be entertaining 
  
  ```
  ", style = "font-size: 60px; margin-top: 300px;"),
  
  panel_markdown("
  
  Specification Files
  
    - markdown format
    
    - Single file per specification
    
    - Clearly defined
    
    - Independent
    
    - Close proximity to the task

                 
  ", style='font-size: 45px;margin-top:140px; '),
  
  panel_markdown("
  
  Key Information to capture
    
    - _Who_ wrote the specifications
    - _When_ they wrote it

  ", style='font-size: 45px;margin-top:140px; '),
  
  panel(
  div(div(markdown_to_html("
  ```{r eval=FALSE, echo = TRUE}
  
  #' @title Specifications For Presentation Success
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2025/01/01
  
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Presentation will be between 15-20 minutes long
    + 1.3 Be entertaining, sucess measures by causing at least 3 people to laugh.
    + 1.4 (Optional) Fame and Glamour and start branded accessories chain.
    
  ```
  "), 
  style = "margin:auto"),
  class = "center_content"),
  style = "font-size: 45px;"))



## Coding ----
pres_val_code <- pres_val_specification %>% 
  
  slide_multipanel(title = tags$div(style = 'width:500px',"Code"),
                   
  panel(style = "width:0px"),
  
  panel(tags$div(tags$div(
    tags$img(src = "img/I_dont_need_help.gif", style = "height:800px"),
    div( style = "bottom:0px;position:absolute",
         p("Queen - I Want To Break Free, 1984",style = "font-size:20px;color:grey;margin-bottom:0px;"),
         p("https://imgur.com/gallery/QC6Nllw",style = "font-size:20px;color:grey")
    ),
    style = "margin:auto;"), 
    class = "center_content"), style = "margin-top: 50px;"),
  
  # panel(tags$div(tags$div(
  #   markdown_to_html("
  # Dont worry, I won't be telling you how to code            
  # "),style= "margin:auto"),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  
  panel_markdown("
  Documenting Code
  
    - Who wrote the code
    - When they wrote it
    
    - Update ownership when code are updated

    
  ", style = "font-size: 45px;margin-top:140px"),
  
  panel_markdown("
  
  *Roxygen Tags*
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>
    
  ", style = "margin-top: 140px; font-size: 45px;"),
  
  panel_markdown("
  Value
  
    - Close proximity to the task
    - Natural extension of documentation already being performed
    - Adds to documentation of functions
                 
  ", style = "margin-top: 140px; font-size: 45px;"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @examples
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Updated Date:
  #' 2030/01/01
  
  joke <- function(Setup, Punchline){
    print(Setup)
    Sys.sleep(3)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @param wait how long to wait to serve the punchline
  #' @examples
  #' joke('Why did the PowerPoint Presentation cross the road?','To get to the other slide.')
  #'      
  #' @section Last Updated By:
  #' Joe King
  #' @section Last Update Date:
  #' 2030/04/01
  
  joke <- function(Setup, Punchline, wait = 3){
    print(Setup)
    Sys.sleep(wait)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel(div(
    img(src = "img/joke_man_page.PNG",
        style = "max-height: 110%;height:1000px"),
    class = "center_content")))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Cases"),
                   
  panel(div(markdown_to_html("
  Draw connections between specifications and functions
  ")),
   div(
     img(src = 'img/How-to-find-innovation.jpg',style = 'height:400px;margin:auto'),
       div( style = "bottom:0px;position:absolute",
            p("Source: https://nc3t.com/wp-content/uploads/2014/10/How-to-find-innovation.jpg",style = "font-size:20px;color:grey")
       )),
   style = "margin-top: 150px;font-size: 50px"),
  
  panel(div(div(markdown_to_html("
  
  A single test case can satisfy <span style='color:purple'>multiple</span> specifications
  
  <span style='color:red'>Every</span> specification must be satisfied by least one test case
                 
  "),style = "margin:auto"),class = "center_content"),style = "font-size: 50px;"),
  
  panel_markdown("
  Good Test Cases
  
    - Goals of the test case
    - Specify the required data
    - Recipe to get to output
    - Clear Expectations

  ",style = "font-size: 45px;margin-top:140px;"),
  
  panel_markdown("
  Documenting Test Cases
  
    - Who wrote the Test
    - When they wrote it
    - _Which_ specifications are satisfied
    
  ",style = "font-size: 45px;margin-top:140px;"),
  
  panel_markdown("
  
  *Roxygen Tags*
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>
    - <span style='color:indianred;'>@section Specification coverage:</span>

  ", style = "margin-top: 140px; font-size: 45px;"),

  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @section Last Updated By: 
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2030/01/01
  #' @section Specification coverage:
  #' T1.1: S1.1, S1.2, S1.3

  + _Test Cases_

  + Setup: Create Presentation 
    
  + T 1.1 Test that specifications 1.1, 1.2, and 1.3 are met by practicing presentation on unsuspecting co-workers
  
    - Present to a captive audience of coworkers and later your significant other
    + T 1.1.1 Test that the presentation was informative by asking what your audience learned.
    + T 1.1.2 Time the presentation and make sure it was between 15 and 20 minutes.
    + T 1.1.3 Test that you were entertaining by counting the amount of chuckles (>3)
        + T 1.1.3.1 Alternatively, eye-rolls from your significant other (>4)
  ```
  ", style = "width: 1400px"))

## Test Code ----

pres_val_test_code <- pres_val_test %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Coding"),
  panel_markdown("
  - Implement Test Cases
  
  - Record results
  
  - Third Party 
  
  ", style = "margin-top:140px; font-size: 50px;"),
  panel_markdown("
  Benefits
    
    - Resolves interpretation errors
      - documentation
      - test cases
    
    - Identify improvements
                 
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  
  panel_markdown("
  <div class = 'center_content'>
  <div style = 'margin:auto; width: 100%;'>
  <p style='font-size:60px'>Approach</p>
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  <img src='https://github.com/r-lib/roxygen2/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  </div></div>
  ", style = "width: 500px;font-size: 60px;"),
  
  
  panel_markdown("
  Documenting Test Code:
  
    - Who wrote the Test Code
    - When they wrote it
    
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  *Roxygen Tags*
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>

  ", style = "margin-top: 140px; font-size: 45px;"),


  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}

  #' @title T1.1
  #' @section Last Updated By: 
  #' Jess Terr
  #' @section Last Update Date:
  #' 2030/01/01
  
  test_that('T1.1',{
    
    joke_result <- joke('What do you call a fake noodle?','An Impasta')
    expect_true(is_dad_joke(joke_result))
    expect_true(caused_laugher(joke_result))
    expect_true(embarrased_significant_other(joke_result))
    
  })
  
  ```
  ",style = "margin-top:140px;"),
  
  panel_markdown("
  {testthat}
  
    - Familar framework
    - Can run and developed interactively
    - Automation
    
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  Reporter Objects from {testthat}
  
    - Track each test and expectation
    - Reports success
    - Records failure mode

  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  ```{r, eval = FALSE}
  |  OK F W S | Context
  |   3       | test_case_001 [3.2 s]
  
  ══ Results ═══════════════════════════════════════
  Duration: 3.2 s
  
  OK:       3
  Failed:   0
  Warnings: 0
  Skipped:  0
  ```           
  ",style = "font-size: 50px; margin-top:140px;"),
  
  panel_markdown("
  
  Using a custom function to extract results from Reporter object<br><br>

  <img src='img/test_table_example.PNG' style='width: 700px; margin: auto'/>
  
  ",style = "font-size: 50px; margin-top:150px;"))

## Documentation ----

pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
                   
  panel_markdown("
  
  What we have so far
  
  - 1. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Specifications
  - 2. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Code
  - 3. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Test Cases
  - 4. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Test Case Code
  - 5. <i style = 'text-decoration: none; color: #272727' class='fa fa-check-square'></i> Validation Documentation
  
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  Final Elements Required
  
  - Sign off page
  
  - Environment information
    - R version
    - Package dependencies and versions
    
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
       
  ## Rmarkdown
  
  - Lives in the vignettes folder
  - Native prose with code
  - Flexible outputs
  
  Validate on the click of a button

    
  ",style = "font-size: 45px;margin-top: 140px;"),

  
  panel_markdown("
  ## Roxygen2
    - Generate list of ownership of all documentation
    - Generate table of specification coverage
    
  ## {testthat}
    - Record results of test code
    
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel(div(
    HTML("<img src='img/captain_planet.gif' style = 'height:800px;margin:auto' />"),
    div( style = "bottom:0px;position:absolute",
         p("'Captain Planet and the Planeteers' Theme Song: Turner Broadcasting System",style = "font-size:20px;color:grey"),
         p("Source: https://www.syfy.com/sites/syfy/files/styles/1100xauto/public/captain-planet.gif",style = "font-size:20px;color:grey")
    ),
    
    class = "center_content"),style = "margin-top: 50px;"),
  
  panel(
    tags$iframe(src = "img/Validate.pdf?#zoom=140",
                style = "width: 1200px; height: 100%",
                frameborder="0", marginwidth="0"),
    style = "margin-top: 50px; padding-left:200px; padding-right:200px"),
  
  panel_markdown("
  ```
  -- DESCRIPTION
  -- man
  -- NAMESPACE
  -- tests
  -- R
    |__jokes.R
  -- vignettes
    |__Validation.Rmd
    |__Validation.pdf
    |__Validation
      |__Specifications
        |__specification_001.Rmd
      |__Test_Cases
        |__test_case_001.Rmd
      |__Test_Code
        |__test_code_001.R
  ```               
  ",style = "font-size: 40px;margin:auto;"))
  
pres_val_doc2 <- pres_val_doc %>% 
  slide_wide(title = NULL,
    tags$div(
    tags$img(src = "img/val_and_R_forever2.png", 
             style = "height:100%; margin:auto;"), 
    class = "center_content", style = "height: 110%"))


## Conclusion ----
pres_conclusion <- pres_val_doc2 %>% 
  slide_multipanel(title = NULL,
  panel_markdown("
  ### Many thanks to all involved
  
  - Marie Vendettuoli
  - Anthony Williams
  - Jimmy Fulp 
  - Bharathi Lakshminarayanan
  - Rafael Kuttner
  - Alicia Sato
  - Shannon Grant
  - Paul Stutzman
  - Kate Ostbye
  
  - Many many more people
  ", style = "font-size: 40px;"))


## Final ----
                   
                   
pres_final <- pres_conclusion %>%  
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 120px',"Thank You"),"
  
   <div style = 'margin:auto;padding-top:20px;text-align:left; z-index:21; position: relative;'>
   <br>
   <div style = 'background-color: #ffffff;opacity: .5;border-radius: 10px;width: 1100px;padding: 20px;font-size: 60px;margin:auto;color: black;'>
    <p style = 'margin-bottom: 0; font-size: 70px;'>Presentation available at: <br><a href = 'https://thebioengineer.github.io/validation_rpharma' style='text-decoration: none;'>   thebioengineer.github.io/validation_rpharma</a></p>
    <br>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;' class='fa fa-github-square'></i> github.com/thebioengineer/validation_rpharma</p>
    <br>
    <div style = 'margin:auto'>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;'  class='fa fa-twitter-square'></i> @ellis_hughes</p>
    </div>
    </div>
   </div>
   
   <p style = 'margin-bottom: 0;'> Presentation brought to you by {sidescroller} </p>
   
   <div style='right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;'>
    <img src='img/FH_logo_improved.png'/>
   </div>
   
   ", style = "text-align: center;width:1600px; margin-top: 50px;")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("index.html"))


