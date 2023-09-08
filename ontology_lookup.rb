require_relative 'ontology_service'

if ARGV.length != 1
  puts "Usage: ruby ontology_lookup.rb <ontology_id>"
  exit
end

ontology_id = ARGV[0]
service = OntologyLookupService.new
details = service.fetch_ontology_details(ontology_id)

if details[:error]
  puts details[:error]
else
  puts JSON.pretty_generate(details)
end
