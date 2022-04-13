

db.getCollection("testDecimal").find().forEach(function(ch)
{
    db.getCollection("testDecimal").update({
     "_id":ch._id},
     {"$set":
{
 "EasyDeliveryPrice": NumberDecimal(ch.EasyDeliveryPrice)
}
});
});
