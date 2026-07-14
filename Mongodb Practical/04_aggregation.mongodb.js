use ('ecommerce');
//$match----->finding totalAmount greater than 10000
//db.products.aggregate([ {$match: {totalAmount: { $gt: 10000 } } } ])
//db.products.aggregate([{$match: {orderStatus: "Pending" }}])


//db.products.aggregate([{ $sort: {totalAmount: -1}},{ $limit: 5 }])


//db.products.aggregate([{$group: { _id: null,TotalSales: { $sum: "$totalAmount" } }}])


