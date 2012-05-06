module Zendesk
  module Export

    # The name here is super janky, but given that the Main class includes all
    # modules, we have to choose a name that doesn't conflict with the
    # get_tickets method in the Ticket module.
    def get_tickets_modified_since(start_timestamp)
      make_request("exports/tickets", {:list => {:start_time => start_timestamp}})
    end

    def get_sample_tickets(start_timestamp)
      make_request("exports/tickets/sample", {:list => {:start_time => start_timestamp}})
    end
  end
end
