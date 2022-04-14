class ReportSerializer
  include JSONAPI::Serializer
  attributes :case_num, :occurence, :city, :state, :vicinity, :conditions, :witnesses, :evidence, :account, :prints, :sounds, :additional_info, :created_at, :updated_at
end
