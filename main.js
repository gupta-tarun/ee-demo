var evenOdd

evenOdd = function (number) {
  var _
  _ = require('lodash')
  if (_.isNumber(number)) {
    if (number % 2 === 0) {
      return 'even'
    }
    return 'odd'
  } else {
    return 'Invalid input!'
  }
}

exports.evenOdd = evenOdd
