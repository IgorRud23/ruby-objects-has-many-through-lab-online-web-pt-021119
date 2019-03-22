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
    appoint.patient == self.patient 
  end
end

def patient
  appointment.map do |appoint|
    appoint.patient == 


end
