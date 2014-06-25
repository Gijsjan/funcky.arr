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

    # http://stackoverflow.com/questions/3115982/how-to-check-javascript-array-equals
    equals: (arr2) -> JSON.stringify(arr) is JSON.stringify(arr2)