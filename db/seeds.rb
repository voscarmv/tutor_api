# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.create(:name => 'Mathematics', :tutor => 'Srinivasa Ramanujan', :description => 'Mathematicians seek and use patterns to formulate new conjectures; they resolve the truth or falsity of such by mathematical proof. When mathematical structures are good models of real phenomena, mathematical reasoning can be used to provide insight or predictions about nature. Through the use of abstraction and logic, mathematics developed from counting, calculation, measurement, and 
the systematic study of the shapes and motions of physical objects. Practical mathematics has been a human activity from as far back as written records exist. The research required to solve mathematical problems can take years or even centuries of sustained inquiry.', :tutorpic=>'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Srinivasa_Ramanujan_-_OPC_-_1.jpg/800px-Srinivasa_Ramanujan_-_OPC_-_1.jpg');

Subject.create(:name => 'Physics', :tutor => 'Albert Einstein', :description => 'Physics is one of the oldest academic disciplines and, through its inclusion of astronomy, perhaps the oldest. Over much of the past two millennia, physics, chemistry, biology, and certain branches of mathematics were a part of natural philosophy, but during the Scientific Revolution in the 17th century these natural sciences emerged as unique research endeavors in their own right. Physics intersects with many interdisciplinary areas of research, such as biophysics and quantum chemistry, and the boundaries of physics are not rigidly defined. New ideas in physics often explain the fundamental mechanisms studied by other sciences and suggest new avenues of research in academic disciplines such as mathematics and philosophy.', :tutorpic=>'https://upload.wikimedia.org/wikipedia/commons/6/6f/Einstein-formal_portrait-35.jpg');

Subject.create(:name => 'Computer Science', :tutor => 'Annie Easley', :description => 'Computer science is the study of algorithmic processes, computational machines and computation itself. As a discipline, computer science spans a range of topics from theoretical studies of algorithms, computation and information to the practical issues of implementing computational systems in hardware and software.', :tutorpic=>'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Annie_Easley.jpg/800px-Annie_Easley.jpg');

