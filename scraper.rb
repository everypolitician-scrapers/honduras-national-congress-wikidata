#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

ids = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/honduras-national-congress-wikipedia', column: 'id')
EveryPolitician::Wikidata.scrape_wikidata(ids: ids)

