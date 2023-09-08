# Use the official Ruby image as a base
FROM ruby:3.1.4

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install any dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run when the container starts
CMD ["ruby", "ontology_lookup.rb"]
