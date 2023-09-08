# Ontology Lookup Service

A simple Ruby script to fetch and display details about an ontology from the Ontology Lookup Service.

## Usage

## Building the Docker Image

1. Navigate to the project root.
2. Run `docker build -t vie_assignment .`

## Running the Docker Container
To run the container, you must first build the image. To do so, run the following command from the project root:
```bash
docker build -t vie_assignment .
```
After building the image, you can run the container with:

```bash
docker run vie_assignment ruby ontology_lookup.rb <ontology_id>
```

Replace <ontology_id> with the desired ontology id (e.g., 'efo').

## Example

```bash
docker run vie_assignment ruby ontology_lookup.rb efo
```