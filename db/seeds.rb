# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


challenges_path = '/Users/Christiane/Desktop/Christiane/Personnal_projects/Unloop/freeCodeCamp/seed/challenges'

def parse_challenge(json_file_path)
  challenge_data = JSON.parse(File.read(json_file_path))

    # Create and save a new chapter object
    chapter = Chapter.new(name: challenge_data["name"], order: challenge_data["order"].to_i)
    chapter.save
    challenge_counter = 1

    # Look inside the "challenges" array and create and save a new challenge object
    challenge_data["challenges"].each do |jsonChallenge|
      challenge = Challenge.new()
      challenge.freeCodeCampId = jsonChallenge["id"]
      challenge.title = jsonChallenge["title"]
      challenge.challengeSeed = jsonChallenge["challengeSeed"]
      challenge.tests = jsonChallenge["test"]
      challenge.description = jsonChallenge["description"]
      challenge.order = challenge_counter
      challenge.chapter_id = chapter.id
      challenge.save
      challenge_counter += 1
    end

end

# Look inside each directory in challenges
Dir.foreach(challenges_path) do |folder_name|
  # Open only directories, not their parents
  next if folder_name == '.' or folder_name == '..'

  # Look  inside each folder
  Dir.foreach("#{challenges_path}/#{folder_name}") do |content|
    # Only call parse_challenge on json file
    if File.extname(content).strip.downcase[1..-1] == "json"
      json_challenge = content
      parse_challenge("#{challenges_path}/#{folder_name}/#{json_challenge}")
    end
  end
end
