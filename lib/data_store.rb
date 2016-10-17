require_relative '../app'

class DataStore
attr_reader :key, :value

  def save_params(params)
    @value = params.last
    @key = params.first
  end
end
