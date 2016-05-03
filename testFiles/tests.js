/* global describe, it */

var testModule, assert

testModule = require('../main.js')
assert = require('assert')

describe('Odd Even Test', function () {
  it('Test for odd case', function (done) {
    var returnValue
    returnValue = testModule.evenOdd(1)
    assert.equal('odd', returnValue, 'Return data is not odd')
    done()
  })
})
