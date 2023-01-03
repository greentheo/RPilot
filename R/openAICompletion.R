openAICompletion = function(echo=T){
  prompt = rstudioapi::getSourceEditorContext()
  print(prompt$selection[[1]]$text)
  request = list(model = "text-davinci-003",
                 prompt = prompt$selection[[1]]$text,
                 temperature = 0.7,
                 max_tokens = 256,
                 echo=echo)


  response = httr::POST(url = "https://api.openai.com/v1/completions",
                  httr::add_headers(`Content-Type` = "application/json",
                              Authorization = "Bearer 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"),
                  body = RJSONIO::toJSON(request)
  )
  print(response)
  print(httr::content(response)$choices[[1]]$text)

  rstudioapi::modifyRange(location =prompt$selection[[1]]$range, httr::content(response)$choices[[1]]$text, id = prompt$id)
}
