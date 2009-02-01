require 'digest/md5'

class MerbSlicePayson::Request

  attr_reader :seller_email,
              :buyer_email,
              :buyer_first_name,
              :buyer_last_name,
              :description,
              :cost,
              :extra_cost,
              :ref_nr,
              :ok_url,
              :agent_id,
              :guarantee_offered,
              :custom_receipt,
              :payment_method,
              :url

  def initialize(order, ok_url)
    # seller info
    @seller_email       = order[:seller_email] || Payson[:seller_email]

    # buyer info
    @buyer_email        = order[:buyer_email]
    @buyer_first_name   = order[:buyer_first_name] || ''
    @buyer_last_name    = order[:buyer_last_name]  || ''

    # product info
    @description        = order[:description]
    @cost               = format_number(order[:cost])
    @extra_cost         = format_number(order[:extra_cost] || '0')

    # transaction data
    @ref_nr             = order[:ref_nr] || ''
    @ok_url             = ok_url
    @agent_id           = order[:agent_id] || Payson[:agent_id]
    @key                = order[:key] || Payson[:key]
    @guarantee_offered  = order[:guarantee_offered] || Payson[:guarantee_offered] || '1'

    # special options
    @custom_receipt     = order[:custom_receipt] || Payson[:custom_receipt] || 'false'
    @payment_method     = order[:payment_method] || Payson[:payment_method] || '0'

    # request url
    merchant            = Payson[:debug] ? 'testagent' : 'merchant'
    @url                = "https://www.payson.se/#{merchant}/default.aspx"
  end

  def md5
    Digest::MD5.hexdigest("#{seller_email}:#{cost}:#{extra_cost}:#{@ok_url}:#{guarantee_offered}#{@key}")
  end

private

  # Format floating point numbers according to Payson specifications; strings
  # with commas as decimal separators.
  def format_number(n)
    sprintf("%.2f", n).gsub('.',',')
  end

end
