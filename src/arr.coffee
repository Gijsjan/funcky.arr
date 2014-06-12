module.exports = (arr) ->
    ###
    Removes an item from an array
    ###
    remove: (item) ->
      index = arr.indexOf item
      arr.splice index, 1
      arr

    # IE9+
    sum: ->
      return 0 if arr.length is 0
      arr.reduce (prev, current) -> current + prev