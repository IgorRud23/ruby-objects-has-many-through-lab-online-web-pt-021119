class Appointment


attr_accessor :date, :patient, :doctor

@@all = []

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end

def appointment
  @@all.select do |appoint|
    appoint.patient == self
  end
end



end
