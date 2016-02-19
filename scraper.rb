#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/honduras-national-congress-wikipedia', column: 'wikiname')

EveryPolitician::Wikidata.scrape_wikidata(names: { es: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder

