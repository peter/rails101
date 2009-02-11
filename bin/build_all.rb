# We're passed a file containing hyperlinks to the HTML
# (ie, table_con_contents.slides)
# and contruct all.slides from it
require 'yaml'

def usage(msg = nil)
  STDERR.puts "#{__FILE__}  metadata contents output"
  if msg
    STDERR.puts
    STDERR.puts msg
  end
  exit 1
end

BASE = File.join(File.dirname(__FILE__), "..")

metadata_name = ARGV.shift || usage("Missing metadata")
contents_name = ARGV.shift || usage("Missing table of contents file name")
op_name       = ARGV.shift || usage("Missing output file name")

metadata = YAML.load_file(metadata_name)

contents = File.readlines(contents_name).
                grep(/^\*.*:(.*)\.html/) { File.join(BASE, "slides", "#{$1}.slides") }.
                map {|name| File.read(name) }

File.open(op_name, "w") do |op|

  op.puts "h1. #{metadata['title']}\n\n"
  op.puts "bq. #{metadata['author']}\n\n"

  op.puts "h1. Contents\n\n"

  op.puts %{<div style="font-size: 70%">\n\n}

  contents.each do |content|
    content =~ /h1.\s+(.*)/
    STDERR.puts $1
    op.puts "* #{$1}\n\n"
  end

  op.puts "</div>\n\n"

  contents.each do |content|
    op.puts content.sub(/h1/, 'h1(slide0)').sub(/__END__.*/m, '')
  end
end