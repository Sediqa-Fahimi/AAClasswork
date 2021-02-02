json.extract! @party, :name

json.guests @party.guests.each do |guest|
    json.extract! guest, :name
    json.gifts guest.gifts.each do |gift|
        json.extract! gift, :title
    end
end
