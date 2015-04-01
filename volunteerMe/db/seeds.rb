
20.times do
  Volunteer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    )

end

  org1 = Organization.create!(
    name: "Digital Nest",
    category: "Education",
    email: "a@gmail.com",
    password: "password",
    website: "http://digitalnest.org/",
    bio: "Bringing prosperity to underserved communities by teaching technological and entrepreneurial skills to youth and young adults.",
    address: "17 Aspen Way",
    city: "Watsonville",
    state: "CA",
    )
org2 = Organization.create!(
    name: "Pancreatic Cancer Action Network",
    category: "Health",
    email: "b@gmail.com",
    password: "password",
    website: "http://www.pancan.org/",
    bio: "The organization raises money for direct private funding of research--and advocates for more aggressive federal research funding of medical breakthroughs in prevention, diagnosis and treatment of pancreatic cancer.",
    address: "4020 Virginia Beach Dr",
    city: "Miami",
    state: "FL",
    )

org3 = Organization.create!(
    name: "High Voltage Youth Camp",
    category: "Education",
    email: "c@gmail.com",
    password: "password",
    website: "http://www.highvoltageyouthcamp.org",
    bio: "High Voltage was founded in 1991 with a mission to provide educational as well as recreational programs for economically disadvantaged youth living in the Metro New Orleans area.",
    address: "1233 Eighth St.",
    city: "New Orleans",
    state: "LA",
    )



  Event.create!(
    name: "GiveNOLA Day Leadership Team",
    description: "We need a few good volunteers who can do the following tasks: assist with GiveNOLA goals, communication strategies and support activities on GiveNOLA Day-May 5th, 2015.",
    requirements: "none",
    commitment_type: "one-time",
    date: "2015-05-05",
    time_start: "9:30 AM",
    time_end: "9:00 PM",
    address: "1233 Eighth St.",
    city: "New Orleans",
    state: "LA",
    spots: "50",
    organization_id: org3.id
    )


  Event.create!(
    name: "Development Committee Chairperson",
    description: "Oversees the logistics of committee's operations. Reports to the Board's Chair.
",
    requirements: "none",
    commitment_type: "pro-bono",
    address: "4040 Tulane Avenue",
    city: "New Orleans",
    state: "LA",
    spots: "1",
    organization_id: org3.id
    )

  Event.create!(
    name: "Purple Stride Miami 2015",
    description: "We would love help with event setup, manning booths, packet pickup, passing out waters at stations along the course, event breakdown.",
    requirements: "a smile :)",
    commitment_type: "one-time",
    date: "2015-04-12",
    time_start: "11:30 AM",
    time_end: "9:00 PM",
    address: "4020 Virginia Beach Dr",
    city: "Miami",
    state: "FL",
    spots: "1",
    organization_id: org2.id
    )

  Event.create!(
    name: "Make people smile",
    description: "We need energetic people to come hangout with some patients",
    requirements: "Energy!",
    commitment_type: "one-time",
    date: "2015-04-04",
    time_start: "01:00 PM",
    time_end: "5:00 PM",
    address: "4020 Virginia Beach Dr",
    city: "Miami",
    state: "FL",
    spots: "10",
    organization_id: org2.id
    )

  Event.create!(
    name: "Web development Workshop",
    description: "Teach high school students the basics of web development for their personal projects. ",
    requirements: "HTML, CSS, Heroku",
    commitment_type: "one-time",
    date: "2015-04-03",
    time_start: "4:00 PM",
    time_end: "5:30 PM",
    address: "17 Aspen Way",
    city: "Watsonville",
    state: "CA",
    spots: "1",
    organization_id: org1.id
    )

    Event.create!(
    name: "After School Tutoring",
    description: "Every second Friday: Students in our tech program need coaches. Come teach them your language of preference. ",
    requirements: "Any CS language",
    commitment_type: "one-time",
    date: "2015-04-10",
    time_start: "5:00 PM",
    time_end: "7:30 PM",
    address: "17 Aspen Way",
    city: "Watsonville",
    state: "CA",
    spots: "6",
    organization_id: org1.id
    )

   Event.create!(
    name: "Purple Stride Miami 2015",
    description: "We would love help with event setup, manning booths, packet pickup, passing out waters at stations along the course, event breakdown.",
    requirements: "a smile :)",
    commitment_type: "one-time",
    date: "2015-04-12",
    time_start: "11:30 AM",
    time_end: "9:00 PM",
    address: "4020 Virginia Beach Dr",
    city: "Miami",
    state: "FL",
    spots: "1",
    organization_id: org2.id
    )


org4 = Organization.create!(
    name: "SECU Family House",
    category: "Health and Medicine",
    email: "secufamilyhouse@gmail.com",
    password: "password",
    website: "http://www.secufamilyhouse.org",
    bio: "SECU Family House is a 40-bedroom hospital hospitality house only minutes away from UNC Hospitals that aims to comfort, nurture, and support critcal care patients, their family members and caregivers by providing affordable housing and a healing environment to families from all over North Carolina who face a long-term medical crisis in a community other than their own.",
    address: "123 Old Mason Farm Road",
    city: "Chapel Hill",
    state: "NC",
    )



  Event.create!(
    name: "Evening Front Desk Volunteers",
    description: "Family House is actively seeking volunteers to staff our front desk Sunday through Thursday from 6-9pm. This volunteer position requires training and facility with computers. We would also like volunteers to serve at least 2-3 shifts per month. Volunteers must be 20 years",
    requirements: "Driver's License Needed",
    commitment_type: "other",
    date: "2015-05-05",
    time_start: "6:00 AM",
    time_end: "9:00 PM",
     address: "123 Old Mason Farm Road",
    city: "Chapel Hill",
    state: "NC",
    spots: "10",
    organization_id: org4.id
    )



org5 = Organization.create!(
    name: "US Equine Rescue League - Central Piedmont",
    category: "Animals",
    email: "equine@gmail.com",
    password: "password",
    website: "http://www.userlcpnc.org",
    bio: "The United States Equine Rescue League (USERL) is a non-profit organization dedicated to the compassionate care of equines. Our mission is to save, protect, and rehabilitate equines in need. We rescue abused, neglected, or abandoned equines; provide them with care and rehabilitation; and finally find them a compatible, loving home. We believe that education is the long-term solution to improving the lives of equines.",
    address: "2806 Longspur Drive",
    city: "Matthews",
    state: "NC",
    )



  Event.create!(
    name: "USERL Benefit Trail Ride",
    description: "Three (3) one hour guided trail rides with access to the facility for th eday",
    requirements: "none",
    commitment_type: "one-time",
    date: "2015-12-05",
    time_start: "6:00 AM",
    time_end: "9:00 PM",
     address: "3580 Deal Road",
    city: "Mooresville",
    state: "NC",
    spots: "3",
    organization_id: org5.id
    )


org6 = Organization.create!(
    name: "American Cancer Society",
    category: "Animals",
    email: "acs@gmail.com",
    password: "password",
    website: "http://www.cancer.org",
    bio: "The American Cancer Society is a volunteer-driven organization. Our volunteers save lives and fight for every birthday threatened by every cancer in every community. They raise funds to support crucial research, provide cancer patients rides to their lifesaving treatments and give one-on-one support to those facing a cancer diagnosis- and that's just the beginning.",
    address: "6725 Lyons Street",
    city: "East Syracuse",
    state: "NY",
    )



  Event.create!(
    name: "Help make a difference in Pulaski!",
    description: "The American Cancer Society, Relay For Life is seeking volunteers in Pulaski - anyone wanting to make a difference - to organize and recruit fundraising teams, garner community support, coordinate logistics, seek refreshments and prizes, plan entertainment and lend a hand to ensure the success of the 2015 event. Relay For Life is a truly unique experience which unites communities to finish the fight against cancer. Volunteer support is crucial to the event and will help the American Cancer Society create a world with less cancer and more birthdays.",
    requirements: "none",
    commitment_type: "other",

    address: "6725 Lyons Street",
    city: "East Syracuse",
    state: "NY",
    spots: "10",
    organization_id: org6.id
    )
