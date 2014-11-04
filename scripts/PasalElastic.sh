#explicit mapping for type Bill

curl -XPOST localhost:9200/pasal/bill/_mapping -d '{
    "bill" : {
        "properties" : {
            "userName" : {"type" : "string", "store" : "yes"},
            "billDate" : {"type" : "date"},
            "quantity" : {"type" : "integer"},
            "rate" : {"type" : "float"},
            "cash" : {"type" : "float"},
            "total" : {"type" : "float"}
        }
    }
}
'

curl -XPOST localhost:9200/pasal/product/_mapping -d '{
    "product" : {
        "properties" : {
            "name" : {"type" : "string", "store" : "yes"},
            "price" : {"type" : "float"}
        }
    }
}
'