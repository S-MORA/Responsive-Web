class ViewManager
  attr_reader :type, :array, :header
  def initialize (type, array, header)
    @type = type
    @array = array
    @header = header
  end
end
