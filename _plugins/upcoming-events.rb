module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.1.0'

    def generate(site)
      site.collections.each do |name, collection|
        if name == 'events'
          current_time = Time.now

          site.data['upcoming_events'] = collection.docs.select { |event| event.data['start'] >= current_time }
          site.data['previous_events'] = collection.docs.select { |event| event.data['end'] < current_time }
          
        end
      end
    end

  end
end