10.times do |blog|
  Blog.create!(
    title: "My blog post number #{blog}",
    bodys: "uis nec tempus nisi. Cras nec malesuada mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum libero libero, mattis non justo in, vestibulum egestas turpis. Ut mauris neque, maximus et dolor at, ornare varius velit. Integer accumsan enim vitae neque cursus auctor at a quam. Nullam in odio tincidunt, suscipit lorem vitae, ullamcorper erat. Nunc efficitur elementum bibendum. Cras laoreet risus quis tempor consectetur. Vivamus iaculis arcu quam, vel blandit dui interdum et. Phasellus at ex ac justo eleifend posuere.",
  )
end

puts "10 Blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 20
  )
end

puts "5 Skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title:"#{portfolio_item} portfolio",
    subtitile:"whatever",
    body:"uis nec tempus nisi. Cras nec malesuada mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum libero libero, mattis non justo in, vestibulum egestas turpis. Ut mauris neque, maximus et dolor at, ornare varius velit. Integer accumsan enim vitae neque cursus auctor at a quam. Nullam in odio tincidunt, suscipit lorem vitae, ullamcorper erat. Nunc efficitur elementum bibendum. Cras laoreet risus quis tempor consectetur. Vivamus iaculis arcu quam, vel blandit dui interdum et. Phasellus at ex ac justo eleifend posuere.",
    thumb_image:"https://via.placeholder.com/350x200",
    main_image: "https://via.placeholder.com/650x350",
  )
end

puts "9 portfolio items created"