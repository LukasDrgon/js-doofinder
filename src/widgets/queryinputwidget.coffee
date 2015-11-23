###
queryinputwidget.coffee
author: @ecoslado
2015 11 21
###

dfTypeWatch = require '../util/dftypewatch'
Widget = require '../widget'

###
QueryInputWidget

This class gets the query and
calls controller's search method.
Gets the string from an input when
receives more than three characters.
###

class QueryInputWidget extends Widget

  constructor: (@queryInput) ->
  
  start: () ->
    _this = this
    dfTypeWatch(@queryInput, 
      callback: () ->
        query = document.querySelector(_this.queryInput).value
        _this.controller.search(query)
            
      wait: 43
      captureLength: 3)

module.exports = QueryInputWidget