#!/usr/bin/env ruby
# == Synopsis
# This script takes photographs living locally on my desktop or laptop
# and publishes them to my homepage at http://marklunds.com.
#
# == Usage
#
# Copy config file publish-photos.yml.template to publish-photos.yml
# and edit as appropriate.
#
# ruby publish-photos [ -h | --help ] <photo_dir1> ... <photo_dirN>

# Load the Rails environment
require File.dirname(__FILE__) + '/../config/environment'
require 'optparse'
require 'rdoc/usage'

opts = OptionParser.new
opts.on("-h", "--help") { RDoc::usage('usage') }
opts.on("-q", "--quiet") { Log::Logger.verbose = false }
opts.parse!(ARGV) rescue RDoc::usage('usage')

Photos::Publisher(ARGV)
