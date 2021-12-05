class DownloadController < ApplicationController
  require 'csv'
  def download_csv
    send_file(
    "#{Rails.root}/public/MSrequirementschecklist.csv",
    filename: "MSrequirementschecklist.csv",
    type: "application/csv"
  )
  end
  def alter_csv
    
    write_parameters = { write_headers: true, headers: %w(images name) }
    read_parameters  = { encoding: 'UTF-8',
                     headers: true,
                     header_converters: :symbol,
                     converters: :all }

    CSV.open('new_data.csv', 'w+', write_parameters) do |new_csv|
      CSV.foreach('MSrequirementschecklist.csv', read_parameters) do |row|
        row[:images] ||= 'im1'
        new_csv << row
      end
    end
  end
end
