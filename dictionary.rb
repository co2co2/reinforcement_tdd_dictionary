class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
    elsif entry.class == String
      @entries.merge!(entry => nil)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    keywords.include?(key)
  end


  def find(string)
    @entries.select{|k,v| k.start_with?string}
  end

end
