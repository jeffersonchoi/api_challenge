  events = HTTParty.get("https://api.meetup.com/2/open_events?and_text=False&offset=0&format=json&lon=-118.4814&limited_events=False&text=pizza&state=ca&photo-host=public&page=20&radius=25.0&lat=34.0219&desc=False&status=upcoming&sig_id=189279758&sig=5944db583950f7a4719174526acba8a4b6f03d7a")
  Event.destroy_all
    events["results"].each do |r|
      if r["venue"]
        if r["name"]
          if ["description"]
            event = Event.create(
              name: r["name"],
              latitude: r["venue"]["lat"],
              longitude: r["venue"]["lon"],
              description: r["description"]
            )
          end
        end
      end

    end
