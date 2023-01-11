# RPilot
Plugin for RStudio that integrates with openAI for code completion

Installation
===========

- Clone to local machine
- Get an openAI API token https://beta.openai.com/docs/api-reference/authentication
- Edit the function under R/openAICompletion.R -> openAICompletion, line #13 and insert your openAI bearer token
- Follow this guide to install plugin to RStudio and create a keyboard shortcut https://rstudio.github.io/rstudioaddins/
- Restart RStudio, enjoy openAI code completion for R, Python and any other language that Rstudio supports!

How to Use It
=========

Once installed, select the text or comment prompt in the editor you'd like to have OpenAI respond to, press the keyboard shortcut combo et voila!
