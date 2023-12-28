require 'csv'
require 'json'

class AirsController < ApplicationController
  def index
    @chart_data = chart_data('CO2')
    @chart_data_tmp = chart_data('TMP')
    @chart_data_voct = chart_data('VOCT')
  end

  def chart_data(measure_type)
    labels = ["SALLE B2", "SALLE 8A", "SALLE 8F"]
    file_names = ['20211101_B3D54FD00007B2.csv', '20211101_B3D54FD000088A.csv', '20211101_B3D54FD000088F.csv']

    data_sets = file_names.map.with_index do |file, index|
      data_set = read_csv_data("csv/#{file}", measure_type)
      {
        label: labels[index],
        data: data_set[:measure_floats],
        timestamps: data_set[:timestamps]
      }
    end
    { datasets: data_sets }
  end

  def read_csv_data(file_path, measure_type)
    csv_data = CSV.read(file_path, headers: true)
    timestamps, measure_floats = [], []

    csv_data.each do |row|
      if row['measure_type'] == measure_type
        timestamps << row['@timestamp']
        measure_floats << row['measure_float'].to_f
      end
    end
    { timestamps: timestamps, measure_floats: measure_floats }
  end
end
