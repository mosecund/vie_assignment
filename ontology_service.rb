require 'net/http'
require 'json'

class OntologyLookupService
  BASE_URL = "https://www.ebi.ac.uk/ols/api/ontologies"

  def fetch_ontology_details(ontology_id)
    uri = URI("#{BASE_URL}/#{ontology_id}")
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      data = JSON.parse(response.body)
      {
        title: data['config']['title'],
        description: data['config']['description'],
        number_of_terms: data['numberOfTerms'],
        status: data['status']
      }
    else
      { error: "Failed to fetch details for ontology id: #{ontology_id}" }
    end
  end
end
