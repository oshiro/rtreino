#!/usr/bin/env ruby

def parse_html(dhtml)
	html = dhtml.to_s 
	ret = Hash.new

	html = html.gsub(/<[^>]*>/,'|').gsub(/[\t]/,'').strip.gsub(/\n[\n]*/,"\n")

	fields = []

	action = :waiting
	html.each_line do |line|
    # puts line
		if action == :waiting
			action = :get if line.match('Run ID')
		else
			break if line.match('Previous Page')
			line.split('|'). each { 
			}
		end
	end

	return ret
end

parse_html(File.new('status.html').read)
