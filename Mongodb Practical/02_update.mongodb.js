use ('ecommerce');
//db.products.updateOne({ orderId: "ORD1002" },{ $set: { orderStatus: "Delivered" } })
//db.products.updateOne( { orderId: "ORD1005" }, { $set: { paymentMethod: "UPI" } })
//db.products.updateMany( {},{ $set: { discount: 500 } })
db.products.updateMany({},{ $rename: { "paymentMethod": "paymentType" } })