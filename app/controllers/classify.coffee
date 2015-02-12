Backbone = require 'backbone'
StackOfPages = require 'stack-of-pages'

class Classify extends Backbone.View
  className: 'classify'
  template: require '../views/classify'

  availablePlaybackRates: [1, 0.5, 0.25]

  elements:
    '#subject-video': 'subjectVideo'
    '#subject-form': 'subjectForm'

  events:
    'change select[name="playback-rate"]': 'onChangePlaybackRate'

  initialize: ->
    @$el.on StackOfPages::activateEvent, @activate

  render: ->
    @$el.html @template @

  activate: (e) =>
    @activeVideoId = +e.originalEvent?.detail?.videoId || 1
    @render()

  onChangePlaybackRate: (e) =>
    document.querySelector('#video-el').playbackRate = e.currentTarget.value

module.exports = Classify
