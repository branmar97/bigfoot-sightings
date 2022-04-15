# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

report = Report.create( 
    occurence: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), 
    city: "Newport News", 
    state: "Virginia", 
    vicinity: "About 3 miles into the Noland Trail before the Lions Bridge", 
    conditions: "Wet and rainy weather conditions with cloudy skies. Ground was muddy.", 
    witnesses: 0, 
    evidence: "There were several footprints about 16 inches long and 4 inches in width. The prints were also about 1.5 inches deep. Not likely to be a human footprint.", 
    account: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet dui nibh. Vestibulum risus nibh, vestibulum sed semper non, consequat sit amet lorem. Pellentesque posuere vel lectus a condimentum. Nam pulvinar lobortis dictum. Curabitur libero mauris, placerat at neque vitae, elementum finibus odio. Proin pellentesque dolor nisl, semper facilisis mi aliquam eget. Mauris malesuada diam velit, ut malesuada sem ultricies vel.

    Cras accumsan ullamcorper gravida. Proin blandit leo velit, vitae sagittis tellus maximus eu. Nunc imperdiet dignissim orci. Donec rhoncus urna ut leo scelerisque fringilla. Aenean sollicitudin velit quis egestas tempus. In consequat interdum arcu, eu euismod dolor rhoncus sit amet. Morbi sed orci sem. Maecenas est felis, fermentum vel porta quis, pretium nec ipsum. Integer volutpat ullamcorper justo a egestas. Integer maximus purus non turpis tempus pharetra. Cras volutpat ac erat quis pharetra. Curabitur id lacinia nunc. Suspendisse posuere est vitae tellus viverra, in volutpat massa consequat.
    
    Proin sapien est, suscipit ut facilisis blandit, placerat nec velit. Maecenas dictum finibus nulla at porttitor. Pellentesque ut consequat nisi. Mauris mauris elit, dapibus vitae massa a, commodo convallis leo. Fusce gravida, risus vel tempor imperdiet, mi urna laoreet purus, ut tempor mauris nisl sed purus. Donec at justo eu purus.",
    prints: "16 inches in length, 4 inches wide, and 1.5 inches deep.",
    sounds: "None",
    additional_info: "None")
