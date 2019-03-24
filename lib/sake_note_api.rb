module SakeNoteApi
  class << self

    [:sakes, :makers].each do |attribute|
      define_method attribute do |options={}|
        response = base.get("#{attribute}", options)
        response.body&.yield_self(&JSON.method(:parse))
      end
    end
    
    private
    
    def base
      Faraday.new(:url => 'https://www.sakenote.com/api/v1') do |conn|
        conn.params['token'] = Rails.application.credentials.sakenote[:api_key]

        conn.request  :url_encoded             # form-encode POST params
        conn.response :logger do | logger |
          logger.filter(/(token=)(\w+)/,'\1[REMOVED]')
        end
        conn.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end
  end
end
