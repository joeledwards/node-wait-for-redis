assert = require 'assert'
durations = require 'durations'
waitForPg = require '../src/index.coffee'

describe "wait-for-redis", ->
    it "should retry until reids is up", (done) ->
        watch = durations.stopwatch().start()

        # TODO: test wait for connection


    it "should retury until the query succeeds", (done) ->
        watch = durations.stopwatch()

        # TODO: test wait for successful command


    it "should timeout after waiting the max timeout", (done) ->
        watch = durations.stopwatch().start()

        # TODO: test timeout

