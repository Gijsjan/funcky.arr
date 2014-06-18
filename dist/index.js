(function() {
  module.exports = function(arr) {
    return {

      /*
      Removes an item from an array
       */
      remove: function(item) {
        var index;
        index = arr.indexOf(item);
        arr.splice(index, 1);
        return arr;
      },
      sum: function() {
        if (arr.length === 0) {
          return 0;
        }
        return arr.reduce(function(prev, current) {
          return current + prev;
        });
      },
      equals: function(arr2) {
        var element, index, _i, _len;
        if (arr === arr2) {
          return true;
        }
        if ((arr == null) || (arr2 == null)) {
          return false;
        }
        if (arr.length !== arr2.length) {
          return false;
        }
        for (index = _i = 0, _len = arr.length; _i < _len; index = ++_i) {
          element = arr[index];
          if (arr[index] !== arr2[index]) {
            return false;
          }
        }
        return true;
      }
    };
  };

}).call(this);
