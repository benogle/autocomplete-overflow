module.exports =
  inclusionPriority: 1
  suggesionPriority: 2
  selector: '*'

  getSuggestions: (request) ->
    # @getLongSuggestions(request)
    @getLotsAndLotsOfSuggestions(request)

  getLotsAndLotsOfSuggestions: ({prefix}) ->
    return unless prefix.startsWith('lot')
    numSuggestions = parseInt(Math.random() * 3000)
    results = []
    for i in [0...numSuggestions]
      results.push
        type: 'function'
        text: "#{prefix}#{i}"
        leftLabel: 'string'
        rightLabel: 'something'
    results

  getLongSuggestions: ({prefix}) ->
    if prefix.startsWith('over')
      [{
        type: 'function'
        text: 'aReallyLongFunctionNameThatHasWayTooMuchInformation()'
        leftLabel: 'string'
        rightLabel: 'something'
      }, {
        type: 'function'
        text: 'anotherReallyLongFunctionNameThatHasTooMuchInformation()'
        leftLabel: 'bool'
        rightLabel: 'something'
      }, {
        type: 'function'
        text: 'wowzaYetAnotherReallyCrazyLongFunctionNameThatHasTooMuchInformation()'
        leftLabel: 'bool'
        rightLabel: 'something'
      }, {
        type: 'function'
        text: 'maybeCheckIfThereIsATigerInTheBushes()'
        leftLabel: 'whatever'
        rightLabel: 'yeah ok'
      }]
    else
      null
