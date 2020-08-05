namespace :import do
	task csv_data: :environment do
		require 'csv'

		csv_file_path = File.read(Rails.root.join('data', 'csv_data.csv'))

		CSV.parse(csv_file_path, headers: true).each do |row|
			mapping = Mapping.where(name: row["Mapping"]).first_or_create
			role = Role.where(name: row["Role"]).first_or_create
			Question.where(description: row["Question"], role_id: role.id,
        mapping_id: mapping.id).first_or_create
		end
	end
end
