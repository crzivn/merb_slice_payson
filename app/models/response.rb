require 'digest/md5'

class MerbSlicePayson::Response

  attr_reader :paysonref

  def initialize(params, key = nil)
    @ok_url     = params['OkURL']
    @paysonref  = params['Paysonref']
    @md5        = params['MD5']
    @ref_nr     = params['RefNr']
    @fee        = params['Fee']

    @key        = key || Payson[:key]
  end

  def valid?
    @md5 == Digest::MD5.hexdigest(@ok_url + @paysonref + @key)
  end


end
