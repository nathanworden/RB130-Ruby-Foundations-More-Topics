class DoesNotComputeError < StandardError; end

def compute
  yield
  rescue
    'Does not compute.'
end


p compute {5 + 3} == 8
p compute {'a' + 'b'} == 'ab'
p compute == 'Does not compute.'