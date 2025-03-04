class Patient
    
    @@all = []
    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def appointments 
        Appointment.all.select{ |appointment| appointment.patient == self }
    end 

    def doctors
        self.appointments.map{ |appointment| appointment.doctor }
    end 

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def self.all 
        @@all 
    end 

end 
