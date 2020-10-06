class Stock < ActiveRecord::Base
    has_many :watchlists
    has_many :users, through: :watchlists 

    def self.create_company(tick)
        
        FinnhubRuby.configure do |config|
        config.api_key['token'] = 'bttakdf48v6vtisvgdo0'
        end
        
        finnhub_client = FinnhubRuby::DefaultApi.new
        
        finnhub_client.quote(tick)

        company={}
        company[:name]=finnhub_client.company_profile2({symbol: tick}).name
        company[:price]=finnhub_client.quote(tick).c
        company[:ticker]=finnhub_client.company_profile2({symbol: tick}).ticker
        company
        
    end
    
end