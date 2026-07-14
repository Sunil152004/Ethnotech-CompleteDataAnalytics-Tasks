use ('ecommerce');
/*db.products.insertMany([
{
  orderId: "ORD1001",
  customer: {
    customerId: "C101",
    name: "Rahul Sharma",
    email: "rahul@gmail.com",
    city: "Hyderabad"
  },
  products: [
    { productId: "P101", productName: "Laptop", quantity: 1, price: 55000 },
    { productId: "P102", productName: "Mouse", quantity: 2, price: 800 }
  ],
  totalAmount: 56600,
  paymentMethod: "UPI",
  orderStatus: "Delivered",
  orderDate: new Date("2026-01-10")
},
{
  orderId: "ORD1002",
  customer: {
    customerId: "C102",
    name: "Priya Reddy",
    email: "priya@gmail.com",
    city: "Bangalore"
  },
  products: [
    { productId: "P103", productName: "Smartphone", quantity: 1, price: 28000 }
  ],
  totalAmount: 28000,
  paymentMethod: "Credit Card",
  orderStatus: "Shipped",
  orderDate: new Date("2026-01-15")
},
{
  orderId: "ORD1003",
  customer: {
    customerId: "C103",
    name: "Arjun Kumar",
    email: "arjun@gmail.com",
    city: "Chennai"
  },
  products: [
    { productId: "P104", productName: "Headphones", quantity: 2, price: 2000 },
    { productId: "P105", productName: "Keyboard", quantity: 1, price: 1500 }
  ],
  totalAmount: 5500,
  paymentMethod: "Cash on Delivery",
  orderStatus: "Pending",
  orderDate: new Date("2026-02-01")
},
{
  orderId: "ORD1004",
  customer: {
    customerId: "C104",
    name: "Sneha Patil",
    email: "sneha@gmail.com",
    city: "Mumbai"
  },
  products: [
    { productId: "P106", productName: "Monitor", quantity: 1, price: 12000 }
  ],
  totalAmount: 12000,
  paymentMethod: "Debit Card",
  orderStatus: "Delivered",
  orderDate: new Date("2026-02-05")
},
{
  orderId: "ORD1005",
  customer: {
    customerId: "C105",
    name: "Vikram Singh",
    email: "vikram@gmail.com",
    city: "Delhi"
  },
  products: [
    { productId: "P107", productName: "Tablet", quantity: 1, price: 18000 },
    { productId: "P108", productName: "Cover", quantity: 1, price: 1000 }
  ],
  totalAmount: 19000,
  paymentMethod: "Net Banking",
  orderStatus: "Cancelled",
  orderDate: new Date("2026-02-10")
},
{
  orderId: "ORD1006",
  customer: {
    customerId: "C106",
    name: "Anjali Rao",
    email: "anjali@gmail.com",
    city: "Pune"
  },
  products: [
    { productId: "P109", productName: "Smart Watch", quantity: 1, price: 7000 }
  ],
  totalAmount: 7000,
  paymentMethod: "UPI",
  orderStatus: "Delivered",
  orderDate: new Date("2026-03-01")
},
{
  orderId: "ORD1007",
  customer: {
    customerId: "C107",
    name: "Kiran Das",
    email: "kiran@gmail.com",
    city: "Kolkata"
  },
  products: [
    { productId: "P110", productName: "Printer", quantity: 1, price: 9500 },
    { productId: "P111", productName: "Ink Cartridge", quantity: 2, price: 1200 }
  ],
  totalAmount: 11900,
  paymentMethod: "Credit Card",
  orderStatus: "Shipped",
  orderDate: new Date("2026-03-05")
},
{
  orderId: "ORD1008",
  customer: {
    customerId: "C108",
    name: "Meena Gupta",
    email: "meena@gmail.com",
    city: "Jaipur"
  },
  products: [
    { productId: "P112", productName: "Camera", quantity: 1, price: 45000 }
  ],
  totalAmount: 45000,
  paymentMethod: "Debit Card",
  orderStatus: "Delivered",
  orderDate: new Date("2026-03-12")
},
{
  orderId: "ORD1009",
  customer: {
    customerId: "C109",
    name: "Suresh Naidu",
    email: "suresh@gmail.com",
    city: "Visakhapatnam"
  },
  products: [
    { productId: "P113", productName: "Power Bank", quantity: 2, price: 1800 }
  ],
  totalAmount: 3600,
  paymentMethod: "UPI",
  orderStatus: "Returned",
  orderDate: new Date("2026-03-18")
},
{
  orderId: "ORD1010",
  customer: {
    customerId: "C110",
    name: "Pooja Verma",
    email: "pooja@gmail.com",
    city: "Ahmedabad"
  },
  products: [
    { productId: "P114", productName: "Bluetooth Speaker", quantity: 1, price: 3500 },
    { productId: "P115", productName: "USB Cable", quantity: 3, price: 300 }
  ],
  totalAmount: 4400,
  paymentMethod: "Cash on Delivery",
  orderStatus: "Delivered",
  orderDate: new Date("2026-03-22")
}
]);*/
//db.products.find().pretty();
//db.products.find({ "customer.city": "Hyderabad" }).pretty();
//db.products.find({totalAmount: { $gt: 20000 }})
//db.products.find({totalAmount: {$gt: 10000, $lt: 30000}})
//db.products.find({totalAmount: { $gt: 10000 }}).limit(3)
//db.products.find({paymentMethod: "UPI",totalAmount: { $gt: 5000 }}).limit(2)
db.products.find().sort({ totalAmount: -1 }).limit(5)