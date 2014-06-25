chai = require 'chai'
chai.should()

funcky = require '../../src/arr'

describe 'Funcky.arr :', ->
  describe 'sum', ->
    it 'should add all values together', ->
      arr = [1, 2, 3, 4, 5]
      funcky(arr).sum().should.equal(15)

  describe 'remove', ->
    it 'should remove an item', ->
      arr = ['a', 'b', a: 12, 13, [1, 2]]
      funcky(arr).remove('a').length.should.equal(4)
      funcky(arr).remove(a: 12).length.should.equal(3)
      funcky(arr).remove(13).length.should.equal(2)
      funcky(arr).remove([1, 2]).length.should.equal(1)
      funcky(arr).remove('b').length.should.equal(0)

  describe 'equals ::', ->
    arr1 = [1, {la: 'li'}, '40', [12, 14, [15, 16, []]], {la: {li: 'lo'}}, null, undefined]

    it 'should return true if arr1 and arr2 are the same arrays', ->
      funcky(arr1).equals(arr1).should.be.ok

    it 'should return true if arr1 and arr2 have the same values', ->
      arr2 = [1, {la: 'li'}, '40', [12, 14, [15, 16, []]], {la: {li: 'lo'}}, null, undefined]
      funcky(arr1).equals(arr2).should.be.ok

    it 'should return false if arr1 and arr2 have a different length', ->
      arr2 = [{la: 'li'}, '40', [12, 14, [15, 16, []]], {la: {li: 'lo'}}, null, undefined]
      funcky(arr1).equals(arr2).should.not.be.ok

      arr1 = [null]
      arr2 = [null, undefined]
      funcky(arr1).equals(arr2).should.not.be.ok

    it 'should return false if arr1 and arr2 have a different nested object', ->
      arr2 = [{la: 'li'}, '40', [12, 14, [15, 16, []]], {la: {li: 'le'}}, null, undefined]
      funcky(arr1).equals(arr2).should.not.be.ok

      arr1 = [null]
      arr2 = [null, undefined]
      funcky(arr1).equals(arr2).should.not.be.ok

    # TODO This test fails!
    #it 'should return false if arr1 and arr2 are null and undefined', ->
    #  arr1 = [null]
    #  arr2 = [undefined]
    #  funcky(arr1).equals(arr2).should.not.be.ok