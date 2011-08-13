class Section < ActiveRecord::Base
  has_many :fields, :dependent => :destroy
  has_ancestry

  validates :name,  :allow_nil => false, :presence => true
  
  acts_as_state_machine :initial => :draft, :column => 'state'
  state :draft,   :enter => :to_draft
  state :disable, :enter => :to_disable 
  state :enable,  :enter => :to_enable 

  event :draft do
      transitions :from => :disable, :to => :draft
      transitions :from => :enable,  :to => :draft
  end
  event :disable do
      transitions :from => :draft,  :to => :disable
      transitions :from => :enable, :to => :disable
  end
  event :enable do
      transitions :from => :disable, :to => :enable
      transitions :from => :draft,   :to => :enable
  end

  private
    def to_enable
      puts 'to enable'  
    end
  
    def to_draft
      puts 'to draft'
    end
  
    def to_enable
      puts 'to enable'
    end

end
