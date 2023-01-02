openAICompletion = function(echo=T){
  prompt = getSourceEditorContext()
  print(prompt$selection[[1]]$text)
  request = list(model = "text-davinci-003",
                 prompt = prompt$selection[[1]]$text,
                 temperature = 0.7,
                 max_tokens = 256,
                 echo=echo)


  response = POST(url = "https://api.openai.com/v1/completions",
                  add_headers(`Content-Type` = "application/json",
                              Authorization = "Bearer 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"),
                  body = toJSON(request)
  )
  print(response)
  print(content(response)$choices[[1]]$text)

  modifyRange(location =prompt$selection[[1]]$range, content(response)$choices[[1]]$text, id = prompt$id)
}
