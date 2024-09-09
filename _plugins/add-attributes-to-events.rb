module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.1.0'

    def generate(site)
      # Loop over each collection
      site.collections.each do |name, collection|
        if name == 'events'
          current_time = Time.now

          # Process each event in the collection
          collection.docs.each do |event|
            if event.data['start'] >= current_time
              event.data['upcoming_event'] = true
              event.data['previous_event'] = false
            elsif event.data['end'] < current_time
              event.data['previous_event'] = true
              event.data['upcoming_event'] = false
            else
              event.data['upcoming_event'] = false
              event.data['previous_event'] = false
            end
          end
        end
      end
    end
  end
end
