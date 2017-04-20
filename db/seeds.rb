company = Company.create!(name: 'Snap Inc', url: 'https://www.snap.com/en-US/jobs/')
role = Role.create!(name: 'iOS Engineer', company: company)
skills = [
    'Objective-C',
    'Git',
    'Java',
    'C',
    'iOS Development',
    'MySQL',
    'Swift',
    'Python',
    'Software Development',
    'Xcode',
    'Mobile devices',
    'User Experience Design',
  ]
skills.each do |skill_name|
  skill = Skill.find_or_create_by!(name: skill_name)
  SkillAssociation.create!(regarding: role, skill: skill)
end

company = Company.create!(name: 'AirBnB', url: 'https://www.airbnb.com/careers')
role = Role.create!(name: 'User Experience Designer', company: company)
skills = [
      'User Interface Design',
      'Web Design',
      'Graphic Design',
      'Information Architecture',
      'Interaction Design',
      'Adobe Creative Suite',
      'User-centered Design',
      'HTML',
      'CSS',
      'Art Direction',
      'Software Prototyping',
      'Product Development Process',
      'Android Design',
      'iOS Design',
      'Email Design',
]
skills.each do |skill_name|
  skill = Skill.find_or_create_by!(name: skill_name)
  SkillAssociation.create!(regarding: role, skill: skill)
end

company = Company.create!(name: 'Facebook', url: 'https://www.facebook.com/careers/')
role = Role.create!(name: 'Product Manager', company: company)
skills = [
  'Product Management',
  'Data Analytics',
  'Strategy',
  'Python',
  'Cross-functional team',
  'Agile Software Development',
  'Project Management',
  'Wire framing',
]
skills.each do |skill_name|
  skill = Skill.find_or_create_by!(name: skill_name)
  SkillAssociation.create!(regarding: role, skill: skill)
end

School.create!(name: 'Bloc', url: 'https://www.bloc.io')
School.create!(name: 'Harvard')
School.create!(name: 'Cornell')
School.create!(name: 'Princeton')
School.create!(name: 'Georgia Institute of Technology')
School.create!(name: 'University of Pennsylvania')
School.create!(name: 'Udacity', url: 'https://www.udacity.com')


# Company.where(type: nil).each do |company|
#   Role.create(name: 'iOS Engineer', company: company)
#   Role.create(name: 'Product Manager', company: company)
#   Role.create(name: 'User Experience Designer', company: company)
# end

# Skill.create(name: 'Objective-C')
# Skill.create(name: 'Git')
# Skill.create(name: 'Java')
# Skill.create(name: 'C')
# Skill.create(name: 'iOS Development')
# Skill.create(name: 'MySQL')
# Skill.create(name: 'Swift')
# Skill.create(name: 'Python')
# Skill.create(name: 'Software Development')
# Skill.create(name: 'Xcode')
# Skill.create(name: 'Mobile devices')
# Skill.create(name: 'User Experience Design')
# Skill.create(name: 'User Interface Design')
# Skill.create(name: 'Web Design')
# Skill.create(name: 'Graphic Design')
# Skill.create(name: 'Information Architecture')
# Skill.create(name: 'Interaction Design')
# Skill.create(name: 'Adobe Creative Suite')
# Skill.create(name: 'User-centered Design')
# Skill.create(name: 'HTML')
# Skill.create(name: 'CSS')
# Skill.create(name: 'Art Direction')
# Skill.create(name: 'Software Prototyping')
# Skill.create(name: 'Product Development Process')
# Skill.create(name: 'Android Design')
# Skill.create(name: 'iOS Design')
# Skill.create(name: 'Email Design')
# Skill.create(name: 'Product Management')
# Skill.create(name: 'Data Analytics')
# Skill.create(name: 'Strategy')
# Skill.create(name: 'Python')
# Skill.create(name: 'Cross-functional team')
# Skill.create(name: 'Agile Software Development')
# Skill.create(name: 'Project Management')
# Skill.create(name: 'Wire framing')
