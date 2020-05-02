# Products
Product.create(name: 'spaghetti alla carbonara', price: 15) #1
Product.create(name: 'pizza margherita', price: 15) #2
Product.create(name: 'saltimbocca', price: 15) #3
Product.create(name: 'fettuccine alfredo', price: 10) #4
Product.create(name: 'spaghetti aglio e olio', price: 10) #5
Product.create(name: 'risotto alla milanese', price: 15) #6
Product.create(name: 'sfincione', price: 10) #7
Product.create(name: 'tiramisù', price: 5) #8
Product.create(name: 'zabaione', price: 5) #9

# Bills
bill_1 = Bill.create(status: 'open', total: 70, people_number: 4)
ProductBill.create(bill_id: 1, product_id: 1, quantity: 1)
ProductBill.create(bill_id: 1, product_id: 2, quantity: 1)
ProductBill.create(bill_id: 1, product_id: 7, quantity: 2)
ProductBill.create(bill_id: 1, product_id: 9, quantity: 4)

bill_2 = Bill.create(status: 'closed', total: 35, people_number: 2)
ProductBill.create(bill_id: 2, product_id: 5, quantity: 1)
ProductBill.create(bill_id: 2, product_id: 6, quantity: 1)
ProductBill.create(bill_id: 2, product_id: 8, quantity: 2)