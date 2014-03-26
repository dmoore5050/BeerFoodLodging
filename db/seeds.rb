states = { 'Tennessee' => ['Nashville', 'Knoxville', 'Chattanooga'],
           'Kentucky'  => ['Louisville'],
           'Alabama'   => ['Huntsville']
         }

states.each do |k, v|
  v.each do |city|
    City.create(name: city, state: k)
  end
end

faqs = { 'question1' => 'answer1',
         'question2' => 'answer2'
       }

faqs.each do |k, v|
  Faq.create(question: k, answer: v)
end
