Vote.destroy_all
Image.destroy_all
Comment.destroy_all
Post.destroy_all



posts = Post.create([
  {message: "This is a post 1 message"},
  {message: "This is a post 2 message"},
  {message: "This is a post 3 message"},
  {message: "This is a post 4 message"},
  {message: "This is a post 5 message"},
  {message: "This is a post 6 message"},
])

posts[0].comments << Comment.create(body:"The 1994 Chardonnay from Bob's Winery blends absurd sage overtones with a toasty albuterol aroma.", user: 'Adalberto (three toes) Alan')

posts[0].images << Image.create(url: 'http://cdn.cutestpaw.com/wp-content/uploads/2011/11/cute-cat-l.jpg')

posts[1].comments << Comment.create(body:"A soapy boysenberry aftertaste and torrid spearmint elements are binded in the 2010 Syrah from De Carro Bros Vineyards.", user: 'Knuckles Rodney')

posts[1].images << Image.create(url: 'http://stylonica.com/wp-content/uploads/2014/03/Cute-Cats-cats-33440930-1280-800.jpg')

posts[2].comments << Comment.create(body:"Palm Creek Vineyards unites better-than-slow-death cheeseburger flavors and a rough cherry bouquet in their 2000 Pinot Grigio.", user: 'Triclops')

posts[2].images << Image.create(url: 'http://stylonica.com/wp-content/uploads/2014/03/cats_animals_kittens_cat_kitten_cute_desktop_1680x1050_hd-wallpaper-753974.jpeg')

posts[3].comments << Comment.create(body:"A non-toxic mealy flavor and ashy velvet undertones are entangled in the 1992 Cabernet Sauvignon from Chateau Merde.", user: 'Adam Bloodgood')

posts[4].comments << Comment.create(body:"The 2001 Bordeaux from Alkie Winery combines delightful gingerbread essences with a wookie-proof oatmeal essence.", user: 'Peregrin Tinyfoot')

posts[5].comments << Comment.create(body:"Champs de Martine brings together cantankerous white pepper midtones and a hard-to-miss rum perfume in their 2005 Semillon.", user: 'The Limping Swordsman')
