
class DataStore
attr_reader :key, :value

  def save_params(params)
    params.each do |key,value|
      @key = key
      @value = value
    end
  end

  def extract_key(params)
    @key = params['key']
  end
end
