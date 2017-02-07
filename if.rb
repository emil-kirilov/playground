if artist == "Gillespie"
	handle = "Dizzy"
elsif artist == "Parker"
	handle = "Bird"
else
	handle = "unknown"
end

if artist == "Gillespie" then handle = "Dizzy"
elsif artist == "Parker" then handle = "Bird"
else handle = "unknown"
end

handle =  if artist == "Gillespie"
					  "Dizzy"
				  elsif artist == "Parker"
						"Bird"
					else
						"unknown"
					end

cost = duration > 180 ? 0.35 : 0.25

print total unless total.zero?

kind =  case year
				when 1850..1889 then "Blues"
				when 1890..1909 then "Ragtime"
				when 1910..1929 then "New Orleans Jazz"
				when 1930..1939 then "Swing"
				else 								 "Jazz"
				end








