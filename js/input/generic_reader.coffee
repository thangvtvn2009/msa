define ["cs!input/http_request"], (HttpRequest) ->
  class GenericReader

    @read: (url, callback) ->
      onret = (text) => @_onRetrieval(text,callback)
      HttpRequest.fetch(url, onret, callback)

    @_onRetrieval: (text, callback) ->
      return callback(@parse(text))
