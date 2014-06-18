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
        
    equals: (arr2) ->
      return true if arr is arr2
      return false if not arr? or not arr2?
      return false if arr.length isnt arr2.length

      for element, index in arr
        return false if arr[index] isnt arr2[index]

      true