require 'nokogiri'
require 'open-uri'

def url 
        page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
        return page
    

end

def crypto_name
    array = []
    all_cryptos_names = url.xpath('//tr/td[@class="text-left col-symbol"]')
    all_cryptos_names.each do |crypto_name|
        array << crypto_name.text
    end
    return array
end

def price
    array = []
    all_crypto_values = url.xpath('//tr/td[@class="no-wrap text-right"]/a[@class="price"]')
    all_crypto_values.each do |crypto_name|
        array << crypto_name.text
    end
    return array

end

def get_money

    
    hash_crypto = {}
    # all_crypto_names = get_url.xpath('//tr/td[@class="text-left col-symbol"]')
    # all_crypto_values = get_url.xpath('//tr/td[@class="no-wrap text-right"]/a[@class="price"]')
    
    
    hash_crypto = [crypto_name.zip(price)]
    print hash_crypto
end
get_money
