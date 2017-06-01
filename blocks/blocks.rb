def map(items)
  result = []
  for item in items
    result << yield(item)
  end
  return result
end


def up_to_you()
  name = "Jarrod"
  return yield(name)
end
