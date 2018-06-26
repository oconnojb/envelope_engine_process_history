def make_inprod
  nbr = Random.rand(1..3)
  aule = ''
  case nbr
  when 1
    6.times do
      aule += Random.rand(10).to_s
    end
  when 2
    aule += 'QP00'
    3.times do
      aule += Random.rand(10).to_s
    end
  when 3
    2.times do
      aule += Random.rand(10).to_s
    end
    aule += '-'
    4.times do
      aule += Random.rand(10).to_s
    end
  end
  return aule
end

def make_model
  models = ['ENVBO', 'ENVSP', 'ENVPR']
  return models[Random.rand(0..2)]
end

def make_item
  first = ['BWE', 'SWE']
  second = ['A1', 'A2', 'A6']
  return first[Random.rand(2)] + '-' + second[Random.rand(3)]
end

def make_fillcount
  return Random.rand(875...10000)
end

def make_inshtreq
  nmr = Random.rand(3)
  case nmr
  when 0
    return 0
  when 1
    return Random.rand(10000...100000)
  when 2
    return Random.rand(100000...1000000)
  end
end

def make_netreqd
  nmr = Random.rand(2)
  case nmr
  when 0
    return '0'
  when 1
    return Random.rand(10..20).to_s + '.000'
  end
end

def make_available
  aule = Random.rand(100...10000).to_s
  return aule += '.000'
end

def make_availshts
  nmr = Random.rand(3)
  case nmr
  when 0
    return 0
  when 1
    return Random.rand(1..50)
  when 2
    return Random.rand(90000...100000)
  end
end

def make_thisid
  return Random.rand(10000...100000)
end

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

def make_plannedenv
  return Random.rand(5000...10000)
end

def make_outs
  nbr = Random.rand(20)
  Random.rand(11) >= 5 ? (return nbr) : (return nbr*1000)
end

def make_USS
  nbr = Random.rand(1..10)
  if nbr >= 6
    return nil
  elsif nbr <= 2
    return "Y"
  else
    return "N"
  end
end

require 'date'
def make_edate
  year = Random.rand(2000..2018)
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

20.times do
  Envelope.create(
    in_prod: make_inprod(),
    model: make_model(),
    fg_item: make_item(),
    item: make_item(),
    fill_count: make_fillcount(),
    in_sht_req: make_inshtreq(),
    net_reqd: make_netreqd(),
    available: make_available(),
    avail_shts: make_availshts(),
    whs_avail_now: make_available(),
    this_id: make_thisid(),
    linked_to_id: nil,
    ship_whse: whse(),
    make_whse: whse(),
    planned_env: make_plannedenv(),
    outs: make_outs(),
    uses_safety_stock: make_USS(),
    lined_type: nil,
    e_date: make_edate(),
    scenario: make_scenario(),
    note: make_note()
  )
end
