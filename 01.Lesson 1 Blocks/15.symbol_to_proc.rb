def my_method
  yield(2)
end

p my_method(&:to_s)