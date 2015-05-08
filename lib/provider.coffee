module.exports =
  selector: '*'

  getSuggestions: ({prefix}) ->
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
