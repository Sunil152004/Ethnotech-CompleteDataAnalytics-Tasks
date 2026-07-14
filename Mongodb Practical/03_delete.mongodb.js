use ('ecommerce');
//db.products.deleteOne({ paymentMethod: "UPI" })
db.products.deleteMany({ orderStatus: "Delivered" })