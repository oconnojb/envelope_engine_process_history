def whse
  nbr = Random.rand(1..3)
  case nbr
    when 1
      return "08"
    when 2
      return "09"
    when 3
      return "10"
    end
  end

def make_outs
  nbr = Random.rand(20)
  Random.rand(11) >= 5 ? (return nbr) : (return nbr*1000)
end

def make_TFnil
  nbr = Random.rand(1..10)
  if nbr >= 6
    return nil
  elsif nbr <= 2
    return "Y"
  else
    return "N"
  end
end

def make_edate
  year = Random.rand(2010..2018)
  month = Random.rand(1..12)
  day = Random.rand(1..28)
  hour = Random.rand(1..24)
  minute = Random.rand(1...60)
  second = Random.rand(1...60)
  dt = DateTime.new(year, month, day, hour, minute, second)
  return dt
end

def make_scenario
  aule = ""
  main = ['50', '51', '60', '65']
  aule += main[Random.rand(0..3)] + "."
  secondary = ['0', '1']
  5.times do
    aule += secondary[Random.rand(0..1)] + "."
  end
  aule += secondary[Random.rand(0..1)]
  return aule
end

def make_note
  notes = [
    "From prior run, check results: Creat Splan Order.",
    "From prior run, check results: Creat Splan Order.Sheeted WIP exists.",
    "No input paper found to fill the order.",
    "No input paper found to fill the order.Printed/tinted.",
    "Not enough parent to fill need."
   ]
 return notes[Random.rand(0..4)]
end
