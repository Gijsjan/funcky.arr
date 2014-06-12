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
      }
    };
  };

}).call(this);
