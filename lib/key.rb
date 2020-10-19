class Key
attr_reader :open
def initialize
  @open = false
  end

def lock
@open = false
end

def unlock
  @open = true
end

end
